import utime
import machine
import json
import ubinascii
from app.motor import motor
from app.halleffect import halleffect

class train():
    def __init__(self, mqtt):
        #variables
        self.status = None
        self.hops = 1
        self.speed = -0.3
        #self.direction = 0
        self.on_checkpoint = False

        self.i2c = machine.I2C(scl = machine.Pin(5) ,sda = machine.Pin(4))

        #setup mpu6050
        self.i2c.writeto_mem(104,107,b'\x00')

        self.mqtt = mqtt
        self.m = motor()
        self.h = halleffect()
        self.battery = machine.ADC(0)
        self.battery_scalar = 4.3 #set by voltage divider at ADC input (Rb+Rt)/Rb

    def read_battery(self):
        #TODO enable some battery measurement circuit?
        return self.battery_scalar * self.battery.read() / 1024 * 3.3 #wemos1D has internal divider......

    def calibrate(self, message = "all"):
        if message in ["all", "hall-effect"]:
            self.h.calibrate()
            self.mqtt.pub("calibration", "hall-effect low: {}".format(self.h.sensor_low))
            self.mqtt.pub("calibration", "hall-effect high: {}".format(self.h.sensor_high))

    def set_status(self, status):
        self.mqtt.pub("status", status)
        self.status = status

    def read_mpu(self):
        data = self.i2c.readfrom_mem(104,0x3b,14)
        return {
        "x" : data[0]<<8|data[1],
        "y" : data[2]<<8|data[3],
        "z" : data[4]<<8|data[5],
        "temperature" : data[6]<<8|data[7],
        "roll"  : data[8]<<8|data[9],
        "pitch" : data[10]<<8|data[11],
        "yaw"   : data[12]<<8|data[13]
        }

    def update(self):
        self.mqtt.pub("JSON", json.dumps({
            "status":self.status,
            "hops":self.hops,
            "speed":self.speed,
            "checkpoint":[False,True][self.h.trigger.value()],
            "battery":self.read_battery(),
            "timestamp":utime.ticks_ms(),
            "mpu6050":self.read_mpu(),
            }))

    def set_hops(self, message):
        self.hops = int(message)

    def set_speed(self, message):
        self.speed = float(message)

        #update movement speed if moving
        if self.status == "moving":
            self.move("")

    def move(self, message):
        if message == "stop":
            self.set_status("stopped")
            self.m.move(0)
        else:
            self.set_status("moving")
            if self.on_checkpoint:
                self.hops += 1
            self.m.move(self.speed)

    def statemachine(self, level = None):
        #check for stop
        if self.h.sensor_triggered:

            self.mqtt.pub("info", "checkpoint")

            #states
            if self.status == "moving":
                self.hops -= 1
                if self.hops < 1:
                    #stop and reverse back to checkpoint
                    self.set_status("homing")
                    self.m.move(0)
                    utime.sleep(1)
                    self.m.move(-self.speed)

            elif self.status == "homing":
                #stop on checkpoint
                self.m.move(0)
                self.hops = 1
                self.set_status("stopped")

            #clear flag
            utime.sleep_ms(100)
            self.h.sensor_triggered = False

mqtt = None

def run(mqtt_obj, parameters):
    #Make mqtt object global, so it can be called from interrupts
    global mqtt 
    mqtt = mqtt_obj
    
    #Set project name as prefix so we can easily filter topics
    #Final topic will be in form:
    #UID/prefix/user_topic
    mqtt.set_prefix("train")

    t = train(mqtt)
    t.set_status("stopped")

    mqtt.sub("move", t.move)
    mqtt.sub("calibrate", t.calibrate)
    mqtt.sub("hops", t.set_hops)
    mqtt.sub("speed", t.set_speed)

    #Main loop
    while True:
        #Call periodicaly to check if we have recived new messages. 
        mqtt.check_msg()
        t.statemachine()
        t.update()

        utime.sleep(0.1)

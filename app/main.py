import utime
import machine
import json
from app.motor import motor
from app.halleffect import halleffect

class train():
    def __init__(self, mqtt):
        #variables
        self.status = None
        self.hops = 1
        self.speed = -0.3
        self.direction = 0
        self.on_checkpoint = False

        self.mqtt = mqtt
        self.m = motor()
        self.h = halleffect()
        self.t = machine.Timer(-1)
        self.hall_timer = machine.Timer(-1)
        self.t.init(period=5000, callback=self.update)
        self.hall_timer.init(period=30, callback=self.h.check_sensor)

    def calibrate(self, message = "all"):
        if message in ["all", "hall-effect"]:
            self.h.calibrate()
            self.mqtt.pub("calibration", "hall-effect low: {}".format(self.h.sensor_low))
            self.mqtt.pub("calibration", "hall-effect high: {}".format(self.h.sensor_high))

    def set_status(self, status):
        self.mqtt.pub("status", status)
        self.status = status

    def update(self,callback_arg):
        self.mqtt.pub("JSON", json.dumps({
            "hall-effect":self.h.read(),
            "status":self.status,
            "hops":self.hops,
            "checkpoint":self.on_checkpoint,
            }))

    def set_hops(self, message):
        self.hops = int(message)

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
            #clear flag
            self.h.sensor_triggered = False

            #change status only once per checkpoint
            if self.on_checkpoint:
                return
            self.on_checkpoint = True

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
        else:
            #clear on_checkpoint flag when not on checkpoint
            self.on_checkpoint = False

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

    #Main loop
    while True:
        #Call periodicaly to check if we have recived new messages. 
        mqtt.check_msg()
        t.h.check_sensor()
        t.statemachine()

        utime.sleep(0.1)

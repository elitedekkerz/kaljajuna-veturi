import utime
import machine
import json
from app.motor import motor
from app.halleffect import halleffect

class train():
    def __init__(self, mqtt):
        self.status = None
        self.mqtt = mqtt
        self.m = motor()
        self.h = halleffect()
        self.t = machine.Timer(-1)
        self.t.init(period=1000, callback=self.update)
        self.hall_timer = machine.Timer(-1)
        self.hall_timer.init(period=10, callback=self.check_hall)

    def set_status(self, status):
        self.mqtt.pub("status", status)
        self.status = status

    def update(self, whatever):
        self.mqtt.pub("JSON", json.dumps({
            "hall-effect":self.h.read(),
            "status":self.status,
            }))

    def move(self, message):
        if float(message) != 0:
            if self.status == "stopped":
                self.set_status("launching")
            else:
                self.set_status("moving")
        else:
            self.set_status("stopped")
        self.m.move(message)

    def check_hall(self, whatever):
        sensor = self.h.read()
        stop_available = (sensor > 150 or sensor < 90)

        #detect launching condition
        if not stop_available and self.status == "launching":
            self.set_status("moving")
            return

        #detect stopping condition
        if stop_available and self.status == "moving":
            self.move(0)

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

    #Main loop
    while True:
        #Call periodicaly to check if we have recived new messages. 
        mqtt.check_msg()

        utime.sleep(1)

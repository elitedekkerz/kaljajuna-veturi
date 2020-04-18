import utime
import machine
from app.motor import motor
from app.halleffect import halleffect

mqtt = None
m = motor()
def move(message):
    global mqtt
    mqtt.pub("status", "moving")
    global m
    m.move(message)

def stop(message):
    m.move(0)

h = halleffect()

def run(mqtt_obj, parameters):
    print("got to run")
    #Make mqtt object global, so it can be called from interrupts
    global mqtt 
    mqtt = mqtt_obj
    
    #Set project name as prefix so we can easily filter topics
    #Final topic will be in form:
    #UID/prefix/user_topic
    mqtt.set_prefix("train")

    mqtt.sub("move", move)

    #Main loop
    mqtt.pub("status", "ready")
    while True:
        #Call periodicaly to check if we have recived new messages. 
        mqtt.check_msg()

        sensor = h.read()
        if sensor > 140 or sensor < 100:
            global m
            m.move(0)

        utime.sleep(0.01)

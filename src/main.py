import utime
import machine
from app.motor import motor

mqtt = None
m = motor()
def move(message):
    global mqtt
    mqtt.pub("status", "moving")
    global m
    m.move(message)

def pin_callback(ihansamamikäseon):
    #Publish message "down" in topic "down"
    global mqtt
    mqtt.pub("pin", "down")

def hello_callback(message):
    #Print "hello" and message when we receive 
    print("hello {}".format(message))

def run(mqtt_obj, parameters):
    print("got to run")
    #Make mqtt object global, so it can be called from interrupts
    global mqtt 
    mqtt = mqtt_obj
    
    #Set project name as prefix so we can easily filter topics
    #Final topic will be in form:
    #UID/prefix/user_topic
    mqtt.set_prefix("example")

    mqtt.sub("move", move)

    #Main loop
    mqtt.pub("status", "ready")
    while True:
        #Call periodicaly to check if we have recived new messages. 
        mqtt.check_msg()

        utime.sleep(0.1)

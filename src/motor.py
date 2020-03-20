print("importing motor lib")
from machine import Pin, PWM

class motor():
    def __init__(self):
        self.m = [Pin(0, Pin.OUT), Pin(2, Pin.OUT)]
        self.m[0].off()
        self.m[1].off()
        #self.pwm = [PWM(self.m[0]),PWM(self.m[1])]

    def move(self, direction = 0):
        print('trying to move {}', direction)

        #parse the given direction to a float value
        direction = int(direction)

        if direction == 1:
            self.m[0].off()
            self.m[1].on()
        elif direction == -1:
            self.m[0].on()
            self.m[1].off()
        else:
            self.m[0].off()
            self.m[1].off()
            
        """
        #break
        if direction == 0:
            self.pwm[0] = 1024
            self.pwm[1] = 1024

        #forwards
        elif direction > 0:
            self.pwm[0] = 0
            self.pwm[1] = min(1,direction)*1024/1024

        #reverse
        else:
            self.pwm[0] = max(-1,direction)*1024/1024
            self.pwm[1] = 0
        """

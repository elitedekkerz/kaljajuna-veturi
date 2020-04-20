from machine import Pin, ADC, Timer
import utime

class halleffect():
    def __init__(self):
        self.h = ADC(0)
        self.timer = Timer(-1)
        self.sensor_high = 150
        self.sensor_low = 90

    def read(self):
        return self.h.read()

    def calibrate(self):
        #TODO save calibration values
        values = []
        for i in range(100):
            values.append(self.h.read())
            utime.sleep(i/1000) # try to avoid missing any cyclic patterns
        self.sensor_low = min(values)*0.9
        self.sensor_high = max(values)*1.1

    def at_checkpoint(self):
        sensor = self.h.read()
        return sensor > self.sensor_high or sensor < self.sensor_low

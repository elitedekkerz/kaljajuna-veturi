from machine import Pin, ADC, Timer

class halleffect():
    def __init__(self):
        self.h = ADC(0)
        self.timer = Timer(-1)

    def read(self):
        return self.h.read()

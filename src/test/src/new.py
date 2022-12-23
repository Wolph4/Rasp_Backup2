import RPi.GPIO as GPIO
import time
from time import sleep

print  (GPIO.VERSION )
pin = 15

GPIO.setmode(GPIO.BOARD)
GPIO.setup(pin, GPIO.IN)

for i in range(0, 5):
    input_value = GPIO.input(pin)
    print "--" + str(input_value)
    sleep(1)

GPIO.cleanup()
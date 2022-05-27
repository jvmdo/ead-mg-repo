from gpiozero import RGBLED
from time import sleep
import datetime
import sys

endtime = datetime.datetime.now() + datetime.timedelta(seconds=5)
led = RGBLED(red=19, green=13, blue=12, pwm=True, active_high = False)
        
def doorOpening():
    print("Opening") # calm green color
    while(True):
        if (datetime.datetime.now() > endtime):
            break
        led.pulse(fade_in_time=2, fade_out_time=3, on_color=(0.0,1.0,0.0))
        sleep(5)
        
def faceDetected():
    print("Face Detected") # calm blue color
    while(True):
        if (datetime.datetime.now() > endtime):
            break
        led.pulse(fade_in_time=2, fade_out_time=3, on_color=(0.0,0.0,1.0))
        sleep(5)
    
def alarm():
    print("Alarm") # alert colors
    while(True):
        if (datetime.datetime.now() > endtime):
            break
        led.pulse(fade_in_time=0.25, fade_out_time=0.25, on_color=(1.0,1.0,0.0), off_color=(1.0,0.5,0.0))
        led.pulse(fade_in_time=0.25, fade_out_time=0.25, on_color=(1.0,0.5,0.0), off_color=(1.0,0.0,0.0))
        sleep(0.5)
        
def noFace():
    print("No Face") # warning yellow color
    while(True):
        if (datetime.datetime.now() > endtime):
            break
        led.pulse(fade_in_time=2, fade_out_time=3, on_color=(1.0,1.0,0.0))
        sleep(5)
        
def notRecognized():
    print("Not Recognized") # alert red color
    while(True):
        if (datetime.datetime.now() > endtime):
            break
        led.pulse(fade_in_time=2, fade_out_time=3, on_color=(1.0,0.0,0.0))
        sleep(5)
        
def ignored():
    print("Ignored") # white color
    while(True):
        if (datetime.datetime.now() > endtime):
            break
        led.pulse(fade_in_time=2, fade_out_time=3, on_color=(0.5,0.5,0.5))
        sleep(5)
        
if __name__ == "__main__":
    try: # if second argument exists
        command = sys.argv[2]
    except: # else just use the first
        command = sys.argv[1]
        
    if (command == 'open'):
        doorOpening()
    elif (command == 'face-detected'):
        faceDetected()
    elif (command == 'no-face' or command == 'close'):
        noFace()
    elif (command == 'not-recognized'):
        notRecognized()
    elif (command == 'ignored'):
        ignored()
    elif (command == 'alarm'):
        alarm()
    else:
        print("Idle")
        
    led.off()

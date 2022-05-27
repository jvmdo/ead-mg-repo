from gpiozero import Motor
from time import sleep
import sys

motor = Motor(7, 8)

def openAndClose():
    print("Opening")
    motor.forward()
    sleep(5)
    
    print("Closing")
    motor.backward()
    sleep(5)
    
    print("Locked")
    motor.stop()
    
    
def manualOpen():
    print("Opening")
    motor.forward()
    sleep(5)
    
    print("Opened")
    motor.stop()
    
    
def manualClose():
    print("Closing")
    motor.backward()
    sleep(5)
    
    print("Locked")
    motor.stop()
    

if __name__ == '__main__':
    try: # if second argument exists
        command = sys.argv[2]
    except: # else just set to close
        command = 'close'
    
    if (sys.argv[1] == 'open'):
        openAndClose()
    elif (sys.argv[1] == 'manual'):
        if (command == 'open'):
            manualOpen()
        else:
            manualClose()
    else:
        manualClose()
        
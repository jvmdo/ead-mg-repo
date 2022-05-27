import I2C_LCD_driver
import datetime
import sys
from time import *


display = I2C_LCD_driver.lcd()
nowtime = lambda: datetime.datetime.now()
endtime = lambda t: nowtime() + datetime.timedelta(seconds=t)
    
    
def doorOpening():
    display.lcd_clear()
    display.lcd_display_string("Opening the door", 1)
    print("Opening")
    sleep(5)
    
    display.lcd_clear()
    display.lcd_display_string("Door opened.", 1)
    print("Opened")
    
def doorClosing():
    display.lcd_clear()
    display.lcd_display_string("Closing the door", 1)
    print("Closing")
    sleep(5)
    
    display.lcd_clear()
    display.lcd_display_string("Door locked.", 1)
    print("Locked")
    idle()
    
def noFace():
    display.lcd_clear()
    display.lcd_display_string("No face detected", 1)
    display.lcd_display_string("Take another pic", 2)
    print("No Face Detected")
    idle()
    
def notRecognized():
    display.lcd_clear()
    display.lcd_display_string("Not recognized.", 1)
    display.lcd_display_string("Wait host answer", 2)
    print("Not Recognized")

def faceDetected():
    display.lcd_clear()
    display.lcd_display_string("Face detected.", 1)
    display.lcd_display_string("Wait rec process", 2)
    print("Face Detected")

def ignored():
    display.lcd_clear()
    display.lcd_display_string("The host ignored", 1)
    display.lcd_display_string("your request.", 2)
    print("Ignored")
    idle()
    
def idle():
    sleep(5)
    display.lcd_clear()
    display.lcd_display_string("Press the button", 1)
    display.lcd_display_string("to capture a pic", 2)
    print("Idle")
    
def alarm():
    display.lcd_clear()
    display.lcd_display_string("You are not wel-", 1)
    display.lcd_display_string("come. Stay away!", 2)
    print("Alarm")
    idle()
    
def processing():
    display.lcd_clear()
    display.lcd_display_string("Processing your", 1)
    display.lcd_display_string("picture.", 2)
    print("Processing")
    
def openAndClose(name):
    display.lcd_display_string(name,2)
    
    t = 4
    while(True):
        if (nowtime() > endtime(t)):
            break
        display.lcd_display_string(f"Very welcome,  {t}", 1)
        t -= 1; sleep(1)
        
    doorClosing()
    
    
if __name__ == "__main__":
    # check if the command was sent manual or automatically
    if (sys.argv[1] == 'manual'):
        command = sys.argv[2]
    else:
        command = sys.argv[1]
        
    if (command == 'open'):
        if (sys.argv[1] == 'manual'):
            doorOpening()
            idle()
        else:
            # First Last (name format)
            name = sys.argv[2] + ' ' + sys.argv[3]
            openAndClose(name)
    elif (command == 'no-face'):
        noFace()
    elif (command == 'not-recognized'):
        notRecognized()
    elif (command == 'face-detected'):
        faceDetected()
    elif (command == 'ignore'):
        ignored()
    elif (command == 'alarm'):
        alarm()
    elif (command == 'close'):
        doorClosing()
    elif (command == 'processing'):
        processing()
    else:
        idle()
    
        
from gpiozero import TonalBuzzer
from time import sleep
import datetime
import sys

buz = TonalBuzzer(18)
nowtime = datetime.datetime.now
endtime = nowtime() + datetime.timedelta(seconds=5)

def alertFrequencies():
    return [444, 879];

def reversedFrequencies(freqs):
    aux = freqs.copy()
    aux.reverse()
    return aux

def alertSiren(freqs, rfreqs):
    print("Activated")
    while(True):
        if (nowtime() > endtime):
            print("Off")
            break
        for f in freqs:
            buz.play(f)
            sleep(0.1)
        for rf in rfreqs:
            buz.play(rf)
            sleep(0.1)

freqs = alertFrequencies()
rfreqs = reversedFrequencies(freqs)

if (sys.argv[1] == 'open'):
    while(True): # plays fake song
        if (nowtime() > endtime):
                break
        buz.play('G5')
    buz.stop()
else: # plays alert frequencies
    alertSiren(freqs, rfreqs)
    buz.stop()

    

#!/usr/bin/bash

#to send to specific device even if device not bieng activly used. 
#get bluez_sink from using
# pacmd list-sinks
#then replace .a2dp_sink with device sink and path to sound.wav  

while true
do
    # Check if sound is playing
    if ! pacmd list-sink-inputs | grep -q "state: RUNNING"
    then
        paplay --device=bluez_sink.00_11_22_33_44_55.a2dp_sink /path/to/your/sound.wav
    fi
    sleep 420
done

:'
an alternate approach using if device is connected directly. 

find device and card number using aplay -l 

#!/bin/bash

while true
do
    # Check if sound is playing
    if ! pacmd list-sink-inputs | grep -q "state: RUNNING"
    then
        aplay -D plughw:1,0 /path/to/your/sound.wav
    fi
    sleep 420
done

'
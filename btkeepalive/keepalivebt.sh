#!/usr/bin/bash

while true
do
    # Check if sound is playing
    if ! pacmd list-sink-inputs | grep -q "state: RUNNING"
    then
        aplay /path/to/sound/file/sound.wav
    fi
    sleep 420
done

#In this script, the if ! pacmd list-sink-inputs | grep -q "state: RUNNING" command checks if there are any active sound streams. If no active sound streams are found (meaning no sound is playing), it will play the inaudible sound. If sound is already playing, it will do nothing and just wait for the next iteration.


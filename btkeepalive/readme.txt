Bluetooth sound bar disconnects if not used. 
so send a sound prior to disconnection that does not cause irritation. 

Make sound.wav file too high pitched to hear. 

using sox - 
 
 sox -n -r 44100 -c 1 /path/want/to/save/sound.wav synth 0.01 sine 23000

Add path to file keepalivebt.sh
Make keepalivebt.sh executable:
 chmod +x keepalivebt.sh
Add keepalive to autostart.sh 
eg . 
run /path/to/script/keepalivebt.sh &


#!/bin/bash
#reboot
#after boot, clear old config and gen new file 
#running with time sleep for next schedule reboot
cd /home/ubuntu/opvn
selectfileconf=$(shuf -i 68-78 -n 1)

rm -rf config.json
cp config.json.$selectfileconf config.json

sudo ./opvn 2>&1 &

sudo ./reboot.sh

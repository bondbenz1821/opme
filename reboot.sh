#!/bin/bash

timeforeboot=$(shuf -i 3600-10000 -n 1)
echo $timeforeboot >> log.txt
sleep $timeforeboot
sudo reboot

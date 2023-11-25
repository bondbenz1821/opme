#!/bin/bash

timeforeboot=$(shuf -i 3600-10000 -n 1)
sleep $timeforeboot
sudo reboot

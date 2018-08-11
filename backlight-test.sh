#!/bin/bash

backlight_path="/sys/class/backlight/backlight/"
brightness_max_level=`cat ${backlight_path}max_brightness`

pause=".02"

for i in `seq 0 ${brightness_max_level}`; do
    echo "${i}" > ${backlight_path}brightness; 
    sleep ${pause}; 
done; 
for i in `seq ${brightness_max_level} -1 0`; do
    echo "${i}" > ${backlight_path}brightness;
    sleep ${pause}; 
done;

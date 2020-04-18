#!/bin/bash

host=$1
dest=$2

mosquitto_pub -h $host -t $dest/sys/file -m app/main.py &&\
sleep 1 &&\
mosquitto_pub -h $host -t $dest/sys/write -f app/main.py &&\
sleep 1 &&\
mosquitto_pub -h $host -t $dest/sys/file -m app/motor.py &&\
sleep 1 &&\
mosquitto_pub -h $host -t $dest/sys/write -f app/motor.py &&\
sleep 1 &&\
mosquitto_pub -h $host -t $dest/sys/file -m app/halleffect.py &&\
sleep 1 &&\
mosquitto_pub -h $host -t $dest/sys/write -f app/halleffect.py &&\
sleep 1 &&\
mosquitto_pub -h $host -t $dest/sys/reboot -m ""

#!/bin/bash

host=10.1.1.95
dest=38e30100

mosquitto_pub -h $host -t $dest/sys/file -m app/main.py &&\
mosquitto_pub -h $host -t $dest/sys/write -f src/main.py &&\
mosquitto_pub -h $host -t $dest/sys/reboot -m ""

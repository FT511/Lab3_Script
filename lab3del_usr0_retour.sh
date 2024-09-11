#!/bin/bash

DEL_PATH=/sys/class/leds/beaglebone:green:usr0

echo "heartbeat" > $DEL_PATH"/trigger"






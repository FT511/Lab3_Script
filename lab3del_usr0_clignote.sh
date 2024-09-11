#!/bin/bash

DEL_PATH=/sys/class/leds/beaglebone:green:usr0

echo "timer" > $DEL_PATH"/trigger"  
echo "300" > $DEL_PATH"/delay_on"
echo "700" > $DEL_PATH"/delay_off"







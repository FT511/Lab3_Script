#!/bin/bash

DEL_PATH=/sys/class/leds/beaglebone:green:usr0

echo "none" > $DEL_PATH"/trigger"  






#!/bin/bash

DEL_PATH=/sys/class/leds/beaglebone:green:usr0

echo "0" > $DEL_PATH"/brightness" 






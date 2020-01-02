#!/bin/bash
#Script to detect RTL-SDR USB dongles.

dect=$(lsusb | grep RTL2838)

if test -z "$dect"
then
 echo "No RTL SDR dongle detected"
else 
 echo "RTL SDR detected:"
 echo $dect
fi
echo "Press Enter to close"
read test

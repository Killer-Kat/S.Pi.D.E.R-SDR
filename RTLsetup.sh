#!/bin/bash
echo -n "Choose an option: 1. Detect RTL Dongle, 2. Blacklist old drivers."
 read CHOICE
 
 if [ $CHOICE = 1 ]
then 
   dect=$(lsusb | grep RTL2838)
 if test -z "$dect"
 then
 echo "No RTL SDR dongle detected"
 else 
  echo "RTL SDR detected:"
  echo $dect
 fi
elif [ $CHOICE = 2 ]
then 
   echo blacklist dvb_usb_rtl28xxu >> /etc/modprobe.d/blacklist-dvb.conf
elif [ $CHOICE = 3 ]
then
   echo "*PlaceHolder*"
else 
   echo Invalid choice.
fi

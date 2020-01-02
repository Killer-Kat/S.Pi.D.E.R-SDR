#!/bin/bash
echo blacklist dvb_usb_rtl28xxu >> /etc/modprobe.d/blacklist-dvb.conf
ls /etc/modprobe.d | grep blacklist-dvb.conf
if test -a /etc/modprobe.d/blacklist-dvb.conf
then
 echo "driver blacklist complete, restart advised"
else 
 echo "blacklist failed"
fi

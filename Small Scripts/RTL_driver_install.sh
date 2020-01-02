#!/bin/bash
#This will install the RTL-SDR drivers you need to use the RTL dongle with SDR software.
# if you get the error "Unable to locate package" you may need to update your sources list.
#You can run this command and it should fix the issue
# echo deb http://http.kali.org/kali kali-rolling main non-free contrib >> /etc/apt/sources.list
sudo apt-get install rtl-sdr

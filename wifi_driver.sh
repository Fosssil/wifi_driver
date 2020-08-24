#!/bin/bash
#search for the file
location=$(sudo find /media/$USER/* /home/$USER -iname 'rtl8821ce-master')
##COPY the wifi driver folder from the location to the home folder
cp -r $location /home/$USER ;
##Enter the directory containing wifi-drivers
cd rtl8821ce-master;
##Compiling the source-code
sudo make all;
##Installing the compilied program
sudo make install ;
##Altering the hardware
sudo modprobe -a 8821ce;
##Exit from the process
exit;
##Removing the folder
rm -r /home/$USER/rtl8821ce-master

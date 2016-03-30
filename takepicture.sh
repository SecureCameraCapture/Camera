#!/bin/bash

#mount a folder into RAM to store the picture
mkdir -p /home/pi/SecureCameraServer/webcam
sudo mount -t tmpfs tmpfs /home/pi/SecureCameraServer/webcam

#take the picture
raspistill -n -md 5 -o /home/pi/SecureCameraServer/webcam/toSend.jpg

#call sript to send 
/usr/bin/python /home/pi/SecureCameraServer/sendpicture.py

#remove the picture from RAM
sudo umount /home/pi/SecureCameraServer/webcam
rm -r /home/pi/SecureCameraServer/webcam

echo "script complete"
#sleep 10
#done

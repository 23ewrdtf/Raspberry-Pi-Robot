
#!/bin/bash
#
# From 
# https://gist.github.com/Lewiscowles1986/fecd4de0b45b2029c390
# https://andrewwippler.com/2016/03/11/wifi-captive-portal/
# https://www.raspberrypi.org/forums/viewtopic.php?t=161715
# and other places.

echo "┌─────────────────────────────────────────────────────────────────────────────────┐"
echo "|I wrote this script to shorten the time for me to build a robot.			|"
echo "|This script assume that Rapsbery Pi camera and Speaker PHAT are connected	|"
echo "|and all the cables are wired as per the diagram on the hackster page.		|"
echo "|This script might take a while, so if you dont see much progress,		|"
echo "|wait till you see all done message.						|"
echo "└─────────────────────────────────────────────────────────────────────────────────┘"
read -p "Press enter to continue"

echo "┌─────────────────────┐"
echo "|Updating repositories|"
echo "└─────────────────────┘"
sudo apt-get update -yqq

echo "┌───────────────────────────────────────────┐"
echo "|Upgrading packages, this might take a while|"
echo "└───────────────────────────────────────────┘"
sudo apt-get upgrade -yqq

echo "┌─────────────────────────────────────────────────┐"
echo "|Installing and configuring RPi-Cam-Web-Interface	|"
echo "|You will get a blue configuration screen		|"
echo "|where you can change the deafult settigns.	|"
echo "└─────────────────────────────────────────────────┘"
read -p "Press enter to continue"
sudo git clone https://github.com/silvanmelchior/RPi_Cam_Web_Interface.git
cd RPi_Cam_Web_Interface
sudo ./install.sh

echo "┌───────────────────────────────────────┐"
echo "|Installing and configuring Speaker PHAT|"
echo "└───────────────────────────────────────┘"
curl -sS https://get.pimoroni.com/speakerphat | bash

echo "┌───────────────────────────────────────┐"
echo "|Installing and configuring sound player|"
echo "└───────────────────────────────────────┘"
sudo apt-get install mpg321

echo "┌─────────────────────────────────────────┐"
echo "|Installing and configuring PS4 Controller|"
echo "└─────────────────────────────────────────┘"
sudo apt install python3-dev python3-pip
sudo pip3 install ds4drv
cat >> /home/pi/.bashrc <<EOF
sudo ds4drv --daemon --led 000008 --emulate-xpad-wireless &
EOF

echo "┌─────────────────────────────────────────┐"
echo "|Installing and configuring PS4 Controller|"
echo "└─────────────────────────────────────────┘"
wget -q https://raw.githubusercontent.com/tretos53/Raspberry-Pi-Robot/master/ps4.sh -O /home/pi/ps4.sh

echo "┌─────────────────────────────────┐"
echo "|Reboot the pi, connect the ps4 and run sudo python ps4.sh|"
echo "|To see the webcam go to your pi's IP                   	|"
echo "└─────────────────────────────────┘"
read -p "Press enter to install PHP"


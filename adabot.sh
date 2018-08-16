
#!/bin/bash
#
# From 
# https://gist.github.com/Lewiscowles1986/fecd4de0b45b2029c390
# https://andrewwippler.com/2016/03/11/wifi-captive-portal/
# https://www.raspberrypi.org/forums/viewtopic.php?t=161715
# and other places.

if [ "$EUID" -ne 0 ]
	then echo "Must be root, run sudo -i before running that script."
	exit
fi

echo "┌─────────────────────────────────────────────────────────────────────────────────────────┐"
echo "|I wrote this script to shorten the time for me to build a robot.				|"
echo "|This script assume that Rapsbery Pi camera and Speaker PHAT 				|"
echo "|is connected and all the cables are wired as per the diagram on the hackster page.	|"
echo "|This script might take a while, so if you dont see much progress,			|"
echo "|wait till you see all done message.|"
echo "└───────────────────────────────────┘"
read -p "Press enter to continue"

echo "┌─────────────────────┐"
echo "|Updating repositories|"
echo "└─────────────────────┘"
apt-get update -yqq

# echo "┌───────────────────────────────────────────┐"
# echo "|Upgrading packages, this might take a while|"
# echo "└───────────────────────────────────────────┘"
# apt-get upgrade -yqq

echo "┌────────────────────────────────────────────────┐"
echo "|Installing and configuring RPi-Cam-Web-Interface|"
echo "└────────────────────────────────────────────────┘"
git clone https://github.com/silvanmelchior/RPi_Cam_Web_Interface.git
cd RPi_Cam_Web_Interface
./install.sh


echo "┌───────────────────────────────────────┐"
echo "|Installing and configuring Speaker PHAT|"
echo "└───────────────────────────────────────┘"
curl -sS https://get.pimoroni.com/speakerphat | bash

echo "┌───────────────────────────────────────┐"
echo "|Installing and configuring sound player|"
echo "└───────────────────────────────────────┘"
mpg321

echo "┌─────────────────────────────────┐"
echo "|After the next step is complete,	|"
echo "|please reboot your pi and test.	|"
echo "└─────────────────────────────────┘"
read -p "Press enter to install PHP"


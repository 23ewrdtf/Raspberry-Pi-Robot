
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

echo "┌───────────────────────────────────┐"
echo "|This script might take a while,	  |"
echo "|so if you dont see much progress,  |"
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

echo "┌────────────────────────────────┐"
echo "|Installing and configuring nginx|"
echo "└────────────────────────────────┘"
apt-get install nginx -yqq
wget -q https://raw.githubusercontent.com/tretos53/Captive-Portal/master/default_nginx -O /etc/nginx/sites-enabled/default
wget -q https://raw.githubusercontent.com/tretos53/Captive-Portal/master/index.php -O  /var/www/html/index.php



sed -i -- 's/#DAEMON_CONF=""/DAEMON_CONF="\/etc\/hostapd\/hostapd.conf"/g' /etc/default/hostapd



echo "┌─────────────────────────────────┐"
echo "|After the next step is complete,	|"
echo "|please reboot your pi and test.	|"
echo "└─────────────────────────────────┘"
read -p "Press enter to install PHP"


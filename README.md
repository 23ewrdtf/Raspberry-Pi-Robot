## Robot on Rapsberry Pi

This is based on a Captive Portal project https://github.com/tretos53/Captive-Portal

For this to work you'll need a raspberry pi connected as per this diagram.

The following script will create an open wifi network and when you connect to it, it will automatically open the browser. Make sure you don't have the internet on your device you are connecting it from.

## Instructions

Flash microsd card with etcher

Put an empty file called ssh with no extension onto the boot partition, this will enable ssh at first boot. No need for screen and keyboard.

Connect Pi to the ethernet network and boot.

Connect to the SSH and run below command. You can get the IP address from IP scanner.

Enable camera using command below and reboot.

```sudo raspi-config```

```
sudo -i
```

```
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/tretos53/Raspberry-Pi-Robot/master/robot.sh | sudo bash $0
```

If you want to specify SSID during installation run below command. If SSID is not specified CaptivePortal01 will be used.

```
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/tretos53/Raspberry-Pi-Robot/master/robot.sh | sudo bash $0 SSID_OF_YOUR_CHOICE
```

This should work. Below might too.

Configure wifi (https://github.com/tretos53/Raspberry-Pie#setting-up-a-wifi-on-first-boot) or other way so you can connect to the 🥧

Add below to /home/pi/.bashrc

```sudo ds4drv --daemon --led 000008 --emulate-xpad-wireless &```

Coptying a python script to operate the robot.

```wget -q https://raw.githubusercontent.com/tretos53/Raspberry-Pi-Robot/master/ps4.sh -O /home/pi/ps4.sh```

Run below command

```
sudo ds4drv
```

Connect your PS4 controller and wait for the connection. Press CTRL and C to stop and restart your pi.
While the Pi reboots, connect the PS4 controller.

Run sudo python ps4.sh afrer reboot. To see the webcam go to your pi's IP.

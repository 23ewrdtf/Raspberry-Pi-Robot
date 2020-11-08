## Robot on Rapsberry Pi

Below script will install a website to control a Raspbery Pie. 

## Requierements

  - A robot build acording to this diagram: https://www.hackster.io/tretos/learning-and-building-a-raspberry-pie-robot-290ac1#schematics
  - A Raspbery pie running 2019-09-26-raspbian-buster-lite.zip

## Instructions

Flash microsd card with etcher

Put an empty file called ssh with no extension onto the boot partition, this will enable ssh at first boot. No need for screen and keyboard.

Configure wifi (https://github.com/tretos53/Raspberry-Pie#setting-up-a-wifi-on-first-boot) or other way so you can connect to the 🥧

Connect Pi to the network and boot.

Connect to the SSH and run below command. You can get the IP address from IP scanner.

Enable camera using command below and reboot.

```sudo raspi-config```

```
curl -H 'Cache-Control: no-cache' -sSL https://raw.githubusercontent.com/tretos53/Captive-Portal/master/robot.sh | sudo bash $0
```

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

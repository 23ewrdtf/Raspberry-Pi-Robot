## Adabot, Raspberry-Pi-Robot

Scripts to configure and operate this robot: https://www.hackster.io/tretos/learning-and-building-a-raspberry-pie-robot-290ac1

Above robot is based on https://www.explainingcomputers.com/rasp_pi_robotics.html

Tested on, without updating the system first, 2018-06-27-raspbian-stretch.zip

Flash microsd card with etcher

Put an empty file called ssh with no extension onto the boot partition, this will enable ssh at first boot. No need for screen and keyboard.

Connect to the SSH and run below command. You can get the IP address from IP scanner. If you run Raspberry Pi zero you need a screen and a keyboard to confugure wifi unless someone can help me with that.

Enable camera using command below and reboot.

```
sudo raspi-config
```

Updating repositories

```sudo apt-get update -y```

Upgrading packages, this might take a while

```sudo apt-get upgrade -y```

Installing and configuring Speaker PHAT

```curl -sS https://get.pimoroni.com/speakerphat | bash```

Installing and configuring RPi-Cam-Web-Interface

```
sudo git clone https://github.com/silvanmelchior/RPi_Cam_Web_Interface.git
cd RPi_Cam_Web_Interface
sudo ./install.sh
```

Installing and configuring sound player

```sudo apt-get install mpg321```

Installing and configuring PS4 Controller

```
sudo pip3 install ds4drv
```

Add below to /home/pi/.bashrc

```sudo ds4drv --daemon --led 000008 --emulate-xpad-wireless &```

Installing and configuring PS4 Controller

```wget -q https://raw.githubusercontent.com/tretos53/Raspberry-Pi-Robot/master/ps4.sh -O /home/pi/ps4.sh```

Connect your PS4 controller
Pres CTRL and C to stop and restart your pi.
While the Pi reboots, connect the PS4 controller.

```sudo ds4drv```

Reboot the pi, connect the ps4 and run sudo python ps4.sh afrer reboot
To see the webcam go to your pi's IP



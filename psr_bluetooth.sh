https://sunnybot.wordpress.com/2017/01/07/dualshock-4-controller-and-pygame/

sudo apt install python3-dev python3-pip
sudo pip3 install ds4drv

Then in the file “/home/user/.bashrc” – where user is pi by default – add the following line to the file:

1
sudo ds4drv --daemon --led 000008 --emulate-xpad-wireless &

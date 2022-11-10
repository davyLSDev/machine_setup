#!/usr/bin/env bash

# Arrg ... maybe even before you do any of this, make sure that there is not an automatic suspend set up.
# first of all you need to set up your account as sudo user
# /sbin/usermod -aG sudo dawson
# install proprietary drivers
sudo apt update
#sudo apt -y install barrier curl ansible
# I had already manually installed barrier and ansible!
sudo apt -y install curl

# install some software
# install some fonts
# install proprietary drivers -> automatically done on Jammy
# set up printer(s)

# Actually, all you seem to need to do on Jammy is to install ansible through apt!
# you really want Ansible set up
#curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#python3 get-pip.py --user
#python3 -m pip install --user ansible
#sudo python3 -m pip install --user argcomplete
#sudo activate-global-python-argcomplete

#!/bin/bash
sudo mv /etc/pip.conf  /etc/pip.conf.origin
sudo mv /etc/apt/sources.list  /etc/apt/sources.list.origin
sudo mv /etc/apt/sources.list.d/raspi.list  /etc/apt/sources.list.d/raspi.list.origin

sudo cp ./pip.conf /etc/
sudo cp ./sources.list /etc/apt/
sudo cp ./raspi.list /etc/apt/sources.list.d/

sudo apt update
sudo apt upgrade -y

#python3 install
sudo apt install python2.7-dev python3-dev
sudo pip3 install numpy

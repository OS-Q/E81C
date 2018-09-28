#!/bin/bash
sudo apt update
sudo apt upgrade -y

#python3 install
sudo apt install python-dev python3-dev -y
sudo apt install python-pip python3-pip -y


pip3 install paho.mqtt



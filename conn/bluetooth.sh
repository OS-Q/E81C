#
# add bluetooth name
sudo mv /etc/machine-info /etc/machine-info.bak
sudo touch /etc/machine-info
sudo echo "PRETTY_HOSTNAME=QITAS@192.168.1.77" >> /etc/machine-info

sudo systemctl status bluetooth
sudo /etc/init.d/bluetooth restart 

# scan on
sudo bluetoothctl 
devices
pair 48:2C:A0:37:6B:16
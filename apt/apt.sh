
sudo mv /etc/apt/sources.list  /etc/apt/sources.list.origin
sudo mv /etc/apt/sources.list.d/raspi.list  /etc/apt/sources.list.d/raspi.list.origin

sudo cp ./sources.list /etc/apt/
sudo cp ./raspi.list /etc/apt/sources.list.d/

sudo apt update
sudo apt upgrade -y

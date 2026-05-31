#!/bin/bash
read -p "enter your backage name" package_name
sudo  apt-get update
sudo apt install $package_name -y
echo "update sussesfuly"

read -p "enter service name" service
sudo systemctl start $service
systemctl status $service 

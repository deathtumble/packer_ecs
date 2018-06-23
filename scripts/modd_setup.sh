#!/usr/bin/env bash
set -e

sudo mkdir /etc/modd
sudo mkdir /etc/config

sudo mv /home/ec2-user/files/bin/modd /usr/local/bin/modd
sudo chmod +x /usr/local/bin/modd

sudo mv /home/ec2-user/files/config/modd.conf /etc/config/modd.conf 

sudo mv /home/ec2-user/files/init.d/modd /etc/init.d/modd 
sudo chmod +x /etc/init.d/modd

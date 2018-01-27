#!/usr/bin/env bash
set -e

sudo mkdir /etc/goss

sudo mv /home/ec2-user/files/bin/goss /usr/local/bin/goss
sudo chmod +x /usr/local/bin/goss

sudo mv /home/ec2-user/files/config/goss.yaml /etc/config/goss.yaml 

sudo mv /home/ec2-user/files/init.d/goss /etc/init.d/goss 
sudo chmod +x /etc/init.d/goss

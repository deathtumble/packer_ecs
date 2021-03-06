#!/usr/bin/env bash
set -e

sudo mkdir -p /etc/modd

sudo mv /home/ec2-user/files/bin/modd /usr/local/bin/modd
sudo chmod +x /usr/local/bin/modd
sudo chown root:root /usr/local/bin/modd

sudo mv /home/ec2-user/files/config/modd.conf /etc/modd/modd.conf 
sudo chown root:root /etc/modd/modd.conf

sudo mv /home/ec2-user/files/init.d/modd /etc/init.d/modd 
sudo chmod +x /etc/init.d/modd
sudo chown root:root /etc/init.d/modd

sudo chkconfig modd on
sudo service modd start
#!/usr/bin/env bash
set -e

sudo mkdir -p /etc/goss

sudo mv /home/ec2-user/files/bin/goss /usr/local/bin/goss
sudo chmod +x /usr/local/bin/goss
sudo chown root:root /usr/local/bin/goss

sudo mv /home/ec2-user/files/config/goss.yaml /etc/goss/goss.yaml 
sudo chown root:root /etc/goss/goss.yaml

sudo mv /home/ec2-user/files/config/host-goss.yaml /etc/goss/host-goss.yaml 
sudo chown root:root /etc/goss/host-goss.yaml

sudo mv /home/ec2-user/files/init.d/goss /etc/init.d/goss 
sudo chmod +x /etc/init.d/goss
sudo chown root:root /etc/init.d/goss

sudo chkconfig goss on
sudo service goss start
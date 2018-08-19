#!/usr/bin/env bash
set -e

sudo mkdir -p /etc/cadvisor

sudo mv /home/ec2-user/files/bin/cadvisor /usr/local/bin/cadvisor
sudo chmod +x /usr/local/bin/cadvisor
sudo chown root:root /usr/local/bin/cadvisor

sudo mv /home/ec2-user/files/init.d/cadvisor /etc/init.d/cadvisor 
sudo chmod +x /etc/init.d/cadvisor
sudo chown root:root /etc/init.d/cadvisor

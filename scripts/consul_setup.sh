#!/usr/bin/env bash
set -e

sudo mkdir -p /etc/consul

sudo mv /home/ec2-user/files/bin/consul /usr/local/bin/consul
sudo chmod +x /usr/local/bin/consul
sudo chown root:root /usr/local/bin/consul

sudo mv /home/ec2-user/files/init.d/goss /etc/init.d/consul 
sudo chmod +x /etc/init.d/consul
sudo chown root:root /etc/init.d/consul

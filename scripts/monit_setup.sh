#!/usr/bin/env bash
set -e

sudo yum install -y monit

sudo mv /home/ec2-user/files/config/monit.conf /etc/monit.conf 
sudo chown root:root /etc/monit.conf
sudo chmod 600 /etc/monit.conf

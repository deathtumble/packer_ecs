#!/usr/bin/env bash
set -e

sudo mkdir -p /etc/node_exporter

sudo mv /home/ec2-user/files/bin/node_exporter /usr/local/bin/node_exporter
sudo chmod +x /usr/local/bin/node_exporter
sudo chown root:root /usr/local/bin/node_exporter

sudo mv /home/ec2-user/files/init.d/node_exporter /etc/init.d/node_exporter 
sudo chmod +x /etc/init.d/node_exporter
sudo chown root:root /etc/init.d/node_exporter

sudo chkconfig node_exporter on
sudo service node_exporter start
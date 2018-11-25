#!/usr/bin/env bash
# this is run as root

sudo sh -c 'echo "vm.max_map_count=262144" >> /etc/sysctl.conf'
sudo sysctl -p
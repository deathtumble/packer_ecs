#!/bin/bash

set -e
  
sudo echo "prepend domain-name-servers 127.0.0.1;" >> /etc/dhcp/dhclient.conf
#!/bin/bash

set -e
  
sudo sh -c 'printf "\nprepend domain-name-servers 127.0.0.1;\n" >> /etc/dhcp/dhclient.conf'
#!/bin/bash

set -e
  
echo "prepend domain-name-servers 127.0.0.1;" >> /etc/dhcp/dhclient.conf
#!/bin/bash
# this is run as root

sudo sh -c 'echo "# Added by machine-images (bump-ulimit.sh in github.com/guardian/machine-images)" >> /etc/security/limits.conf'
sudo sh -c 'echo "*  soft  nofile  16384" >> /etc/security/limits.conf'
sudo sh -c 'echo "*  hard  nofile  16384" >> /etc/security/limits.conf'
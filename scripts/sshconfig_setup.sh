#!/bin/bash

set -e

printf "host *.service.consul\n    ForwardAgent yes\n    User ec2-user" > /home/ec2-user/.ssh/config

chmod 600 /home/ec2-user/.ssh/config
chown ec2-user:ec2-user /home/ec2-user/.ssh/config

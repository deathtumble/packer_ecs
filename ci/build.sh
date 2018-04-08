#!/bin/bash

set -e

CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo 
pushd terraform

echo -e ${CYAN}refreshing infrastructure${NC} 
terraform refresh

echo -e ${CYAN}building infrastructure${NC} 
terraform apply -auto-approve  

echo -e ${CYAN}inspecting infrastructure${NC} 
terraform output -json | jq '{ subnet_id: .subnet_id.value, vpc_id: .vpc_id.value }' > ../terraform.json

popd

packer build -var-file=terraform.json ecs_ami.json 

pushd terraform

echo -e ${CYAN}destroy infrastructure${NC}
terraform destroy -force  

popd

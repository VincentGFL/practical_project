#! /bin/bash
sudo apt update
sudo apt install -y ansible
cd ansible
ansible-playbook -i inventory playbook.yaml 

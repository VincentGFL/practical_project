#! /bin/bash
sudo apt update
sudo apt install ansible -y
ansible --version

cd ansible

ansible-playbook -i inventory playbook.yaml
#! /bin/bash
. ~/.bashrc

cd ansible
ansible-playbook -v -i inventory playbook.yaml 

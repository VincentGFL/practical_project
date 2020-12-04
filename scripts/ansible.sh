#! /bin/bash
ansible --version
cd ansible
ansible-playbook -i inventory playbook.yaml 

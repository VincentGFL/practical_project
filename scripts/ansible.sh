#! /bin/bash
ansible --version

home/jenkins/.local/bin/ansible-playbook ansible-playbook -i inventory playbook.yaml 

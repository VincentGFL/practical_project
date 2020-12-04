#! /bin/bash

source ~/.bashrc
pip3 install --user ansible
cd ansible
ansible-playbook -v -i inventory playbook.yaml

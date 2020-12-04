#! /bin/bash

source ~/.bashrc
pip3 install --user ansible
ansible-playbook -v -i inventory practical_projects/ansible/playbook.yaml

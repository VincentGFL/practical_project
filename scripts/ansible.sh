#! /bin/bash
. ~/.bashrc

/home/jenkins/.local/bin/ansible-playbook -v -i inventory playbook.yaml
#! /bin/bash
. ~/.bashrc

/home/jenkins/.local/bin/ansible-playbook -v -i inventory ansible/playbook.yaml
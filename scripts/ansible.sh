#! /bin/bash
export DB_URI='${DB_URI}'
export KEY='${KEY}'
/home/jenkins/.local/bin/ansible-playbook -i ansible/inventory ansible/playbook.yaml
#! /bin/bash
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip3 install --user ansible
/home/jenkins/.local/bin/ansible-playbook -v -i inventory practical_projects/ansible/playbook.yaml

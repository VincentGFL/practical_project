#! /bin/bash

ssh jenkins@manager << EOF
echo "======================="
echo ${DB_URI}
echo "======================="
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
env DB_URI=${DB_URI} env KEY=${KEY} docker stack deploy --compose-file docker-compose.yaml generatorstack

EOF
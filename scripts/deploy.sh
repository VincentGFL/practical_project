#! /bin/bash

ssh jenkins@manager << EOF
export DB_URI=$JDB_URI
export KEY=$KEY2
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
env DB_URI=${JDB_URI} env KEY=${KEY2} docker stack deploy --compose-file docker-compose.yaml generatorstack

EOF
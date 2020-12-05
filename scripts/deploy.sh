#! /bin/bash

ssh jenkins@manager << EOF

git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
export DB_URI=${DB_URI}
echo ${DB_URI}
export KEY=${KEY}
docker stack deploy --compose-file docker-compose.yaml generatorstack

EOF
#! /bin/bash

ssh jenkins@manager << EOF
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
git pull
echo ${DB_URI}


env DB_URI=${DB_URI} env KEY=${KEY} docker stack deploy --compose-file docker-compose.yaml generatorstack
EOF


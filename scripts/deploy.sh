#! /bin/bash

ssh jenkins@manager << EOF
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
git pull


docker stack rm generatorstack 

env DB_URI=${DB_URI} env KEY=${KEY} docker stack deploy --compose-file docker-compose.yaml newgeneratorstack
EOF


#! /bin/bash

ssh jenkins@manager << EOF

git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
docker stack deploy --compose-file docker-compose.yaml generatorstack

EOF
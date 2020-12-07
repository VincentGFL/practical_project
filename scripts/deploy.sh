#! /bin/bash

ssh jenkins@manager << EOF
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
git pull
export DB_URI=${DB_URI}
export KEY=${KEY}


env DB_URI=${DB_URI} env KEY=${KEY} docker stack deploy --compose-file docker-compose.yaml generatorstack
EOF


#! /bin/bash
#env DB_URI=${DB_URI} env KEY=${KEY} 
#export DB_URI=${DB_URI}
#export KEY=${KEY}
ssh jenkins@manager << EOF
git clone https://github.com/VincentGFL/practical_project.git
git pull
cd practical_project

#docker stack rm generatorstack 
docker pull vlin303/frontendimage:latest
docker pull vlin303/classgenimage:latest
docker pull vlin303/namegenimage:latest
docker pull vlin303/healthgen:latest

env DB_URI=${DB_URI} env KEY=${KEY} docker stack deploy --compose-file docker-compose.yaml generatorstack
EOF


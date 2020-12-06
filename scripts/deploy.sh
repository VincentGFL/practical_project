#! /bin/bash
#env DB_URI=${DB_URI} env KEY=${KEY} 
#export DB_URI=${DB_URI}
#export KEY=${KEY}
ssh jenkins@manager << EOF

export DB_URI=${DB_URI}
export KEY=${KEY}
echo "====================="
echo ${DB_URI}
echo "====================="
docker stack rm generatorstack 
docker pull vlin303/frontendimage:latest
docker pull vlin303/classgenimage:latest
docker pull vlin303/namegenimage:latest
docker pull vlin303/healthgen:latest

git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
env $(DB_URI) docker stack deploy --compose-file docker-compose.yaml generatorstack
EOF


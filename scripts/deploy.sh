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
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
env $(cat .env | grep ^[A-Z] | xargs) docker stack deploy --compose-file docker-compose.yaml generatorstack
EOF


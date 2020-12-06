#! /bin/bash
#env DB_URI=${DB_URI} env KEY=${KEY} 
ssh jenkins@manager << EOF
export DB_URI="$DB_URI"
export KEY="$KEY"
git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
docker stack deploy --compose-file docker-compose.yaml generatorstack
exit
EOF

ssh jenkins@worker << EOF
export DB_URI="$DB_URI"
export KEY="$KEY"

EOF
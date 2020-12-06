#! /bin/bash
#env DB_URI=${DB_URI} env KEY=${KEY} 
#export DB_URI=${DB_URI}
#export KEY=${KEY}
ssh jenkins@manager << EOF


git clone https://github.com/VincentGFL/practical_project.git
cd practical_project
docker stack deploy -e DB_URI=${DB_URI} --compose-file docker-compose.yaml generatorstack
export DB_URI=${DB_URI}
export KEY=${KEY}
exit
EOF

ssh jenkins@worker << EOF

export DB_URI=${DB_URI}
export KEY=${KEY}

EOF

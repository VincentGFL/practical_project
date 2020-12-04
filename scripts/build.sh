#! /bin/bash

export DB_URI=${DB_URI}
export KEY=${KEY}
docker login -u $dockeru -p $dockerp
sudo docker-compose build
sudo docker-compose push
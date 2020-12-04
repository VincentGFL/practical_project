#! /bin/bash

env DB_URI=${DB_URI}
env KEY=${KEY}
docker login -u $dockeru -p $dockerp
sudo docker-compose down --rmi all
sudo docker-compose build
sudo docker-compose push
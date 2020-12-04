#! /bin/bash

DB_URI=${DB_URI}
KEY=${KEY}
docker login -u $dockeru -p $dockerp
sudo docker-compose build
sudo docker-compose push
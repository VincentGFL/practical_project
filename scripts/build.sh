#! /bin/bash

env DB_URI=${DB_URI}
env KEY=${KEY}
docker login -u $dockeru -p $dockerp
sudo docker-compose build
sudo docker-compose push
echo "========================"
echo ${DB_URI}
echo "========================"
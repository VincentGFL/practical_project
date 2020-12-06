#! /bin/bash

docker login -u $dockeru -p $dockerp 
sudo docker-compose push
#docker image prune -a -f
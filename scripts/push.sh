#! /bin/bash

docker login -u $dockeru -p $dockerp 
docker-compose push
docker image prune -a -f
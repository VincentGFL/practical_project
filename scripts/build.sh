#! /bin/bash


#env DB_URI=${DB_URI} env KEY=${KEY} 
export DB_URI=${JDB_URI}
export KEY=${KEY2}
sudo docker-compose build
docker image prune -a -f


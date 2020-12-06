#! /bin/bash


#env DB_URI=${DB_URI} env KEY=${KEY} 
#export DB_URI=${DB_URI}
#export KEY=${KEY}
docker-compose down --rmi all
docker-compose build 

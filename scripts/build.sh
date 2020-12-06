#! /bin/bash


#env DB_URI=${DB_URI} env KEY=${KEY} 
#export DB_URI=${DB_URI}
#export KEY=${KEY}
#sudo docker-compose down --rmi all
docker-compose build -e DB_URI=${DB_URI}

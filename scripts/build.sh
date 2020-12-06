#! /bin/bash


#env DB_URI=${DB_URI} env KEY=${KEY} 
#export DB_URI=${DB_URI}
#export KEY=${KEY}
#sudo docker-compose down --rmi all
env DB_URI=${DB_URI} env KEY=${KEY} docker-compose build 

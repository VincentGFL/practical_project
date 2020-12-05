#! /bin/bash


#env DB_URI=${DB_URI} env KEY=${KEY} 
sudo docker-compose down --rmi all
sudo docker-compose build



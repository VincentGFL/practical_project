#! /bin/bash
sh "export DB_URI=${DB_URI}"
sh "export KEY=${KEY}"
sudo docker-compose build
sudo docker-compose push
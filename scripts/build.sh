#! /bin/bash




env DB_URI=${DB_URI} env KEY=${KEY} sudo docker-compose build
docker login -u $dockeru -p $dockerp sudo docker-compose push

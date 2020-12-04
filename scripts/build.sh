#! /bin/bash

cd frontend
docker-compose build -t vlin303/frontend:latest .
docker-compose push vlin303/frontend:latest

cd ../classgen
docker-compose build -t vlin303/classgen:latest .
docker-compose push vlin303/classgen:latest

cd ../namegen
docker-compose build -t vlin303/namegen:latest .
docker-compose push vlin303/namegen:latest

cd ../healthgen
docker-compose build -t vlin303/healthgen:latest .
docker-compose push vlin303/healthgen:latest
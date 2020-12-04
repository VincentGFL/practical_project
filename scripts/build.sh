#! /bin/bash

cd frontend
docker build -t vlin303/frontend:latest .
docker push vlin303/frontend:latest

cd ../classgen
docker build -t vlin303/classgen:latest .
docker push vlin303/classgen:latest

cd ../namegen
docker build -t vlin303/namegen:latest .
docker push vlin303/namegen:latest

cd ../healthgen
docker build -t vlin303/healthgen:latest .
docker push vlin303/healthgen:latest
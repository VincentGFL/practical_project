#! /bin/bash
cd practical_project

docker build -t testing-image -f testing/Dockerfile .
docker run -it -d --name testing-container testing-image

export DB_URI=$JDB_URI
export KEY=$KEY2
docker exec testing-container pytest ./frontend --cov ./application
export DB_URI=$JDB_URI
export KEY=$KEY2
docker exec testing-container pytest ./classgen --cov ./application
export DB_URI=$JDB_URI
export KEY=$KEY2
docker exec testing-container pytest ./namegen --cov ./application
export DB_URI=$JDB_URI
export KEY=$KEY2
docker exec testing-container pytest ./healthgen --cov ./application

docker stop testing-container
docker rm testing-container
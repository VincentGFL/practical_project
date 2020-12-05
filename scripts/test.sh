#! /bin/bash
cd practical_project
docker build -t testing-image -f testing/Dockerfile .
docker run -it -d --name testing-container testing-image

docker exec testing-container export DB_URI='${DB_URI}'
docker exec testing-container export KEY='${KEY}'

docker exec testing-container pytest ./frontend --cov ./application
docker exec testing-container pytest ./classgen --cov ./application
docker exec testing-container pytest ./namegen --cov ./application
docker exec testing-container pytest ./healthgen --cov ./application

docker stop testing-container
docker rm testing-container
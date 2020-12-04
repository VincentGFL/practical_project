#! /bin/bash
docker login
docker build -t testing-image -f testing/Dockerfile .
docker run -it -d --name testing-container testing-image

docker exec testing-container pytest ./frontend --cov ./application
docker exec testing-container pytest ./classgen --cov ./application
docker exec testing-container pytest ./namegen --cov ./application
docker exec testing-container pytest ./healthgen --cov ./application

docker stop testing-container
docker rm testing-container
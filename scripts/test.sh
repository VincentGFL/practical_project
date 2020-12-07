#! /bin/bash
cd practical_project

docker build -t testing-image -f testing/Dockerfile .
docker run -it -d --name testing-container testing-image

docker exec testing-container pytest ./frontend --cov frontend/application
docker exec testing-container pytest ./classgen --cov classgen/application
docker exec testing-container pytest ./namegen --cov namegen/application
docker exec testing-container pytest ./healthgen --cov healthgen/application

docker stop testing-container
docker rm testing-container
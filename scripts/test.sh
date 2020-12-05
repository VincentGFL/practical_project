#! /bin/bash

docker build -t testing-image -f testing/Dockerfile .
docker run -it -d --name testing-container testing-image

docker exec testing-container export DB_URI='${DB_URI}'
docker exec testing-container export KEY='${KEY}'

docker exec testing-container env DB_URI='$DB_URI' env KEY='$KEY' pytest ./frontend --cov ./application
docker exec testing-container env DB_URI='$DB_URI' env KEY='$KEY' pytest ./classgen --cov ./application
docker exec testing-container env DB_URI='$DB_URI' env KEY='$KEY' pytest ./namegen --cov ./application
docker exec testing-container env DB_URI='$DB_URI' env KEY='$KEY' pytest ./healthgen --cov ./application

docker stop testing-container
docker rm testing-container
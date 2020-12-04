#! /bin/bash

ssh jenkins@manager
sudo docker stack deploy --compose-file docker-compose.yaml generatorstack
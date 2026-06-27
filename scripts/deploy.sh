#!/bin/bash

docker pull arkaslittlemind/nodejs-devops-app:latest

docker stop node-app || true
docker rm node-app || true

docker run -d --name node-app -p 3000:3000 arkaslittlemind/nodejs-devops-app:latest
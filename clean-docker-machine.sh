#!/bin/bash -e

docker ps | awk '{print $1}' | xargs docker stop
docker ps -a | awk '{print $1}' | xargs docker rm
docker images -a | awk '{print $3}' | xargs docker rmi 

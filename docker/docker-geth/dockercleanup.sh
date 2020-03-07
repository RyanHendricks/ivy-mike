#!/bin/bash

# Remove all containers
docker rm -f $(docker ps -a -q)

# Remove all images
docker rmi $(docker images -q)

docker volume prune

docker network prunez
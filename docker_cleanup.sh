#!/bin/bash

# kill running docker containers
docker kill $(docker ps -q)

# remove docker containers
docker rm $(docker ps -a -q)

#remove docker images
docker rmi $(docker images -q)

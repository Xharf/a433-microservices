#!/bin/bash

# build image
docker build -t item-app:v1 .
# ngelist image
docker images

# rename image
docker image tag item-app:v1 xharf/item-app:v1

# login
echo $PASSWORD_DOCKER_HUB | docker login -u xharf --password-stdin

# push ke docker hub
docker push xharf/item-app:v1
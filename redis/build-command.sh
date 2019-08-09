#!/bin/zsh
TAG=$1
docker build -t harbor.ccav.tech/redis/redis:${TAG} .
sleep 3
docker push  harbor.ccav.tech/redis/redis:${TAG}

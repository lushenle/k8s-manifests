#!/bin/zsh
TAG=$1
docker build -t harbor.ccav.tech/zookeeper/zookeeper:${TAG} .
sleep 1
docker push  harbor.ccav.tech/zookeeper/zookeeper:${TAG}

#!/bin/bash
TAG=$1
docker build -t harbor.magedu.net/linux36/dubboadmin:${TAG}  .
sleep 3
docker push  harbor.magedu.net/linux36/dubboadmin:${TAG}

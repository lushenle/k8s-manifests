#!/bin/bash
TAG=$1
docker build -t harbor.ccav.tech/dubbo/dubbo-demo-consumer:${TAG}  .
sleep 3
docker push harbor.ccav.tech/dubbo/dubbo-demo-consumer:${TAG}

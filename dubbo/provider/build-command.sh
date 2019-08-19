#!/bin/bash
TAG=$1
docker build -t harbor.ccav.tech/dubbo/dubbo-demo-provider:${TAG}  .
sleep 3
docker push harbor.ccav.tech/dubbo/dubbo-demo-provider:${TAG}

#!/bin/bash
TAG=$1
docker build -t  harbor.ccav.tech/jenkins/jenkins:${TAG} .
sleep 3
docker push harbor.ccav.tech/jenkins/jenkins:${TAG}

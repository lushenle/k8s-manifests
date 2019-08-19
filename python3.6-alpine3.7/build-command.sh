#!/bin/zsh
docker build -t harbor.ccav.tech/flask/hello-world-uwsgi-nginx:python3.6-alpine3.7 .
docker push harbor.ccav.tech/flask/hello-world-uwsgi-nginx:python3.6-alpine3.7

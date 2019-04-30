#!/usr/bin/env bash

docker build -t=node-nginx .
docker tag node-nginx ezekov/node-nginx:latest
docker push ezekov/node-nginx:latest
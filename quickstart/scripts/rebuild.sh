#!/usr/bin/env bash

set -ex

docker-compose pull
docker-compose build

docker-compose kill
docker-compose down --remove-orphans

docker network create web || true
docker-compose up -d

# docker-compose up -d --scale whoami=2

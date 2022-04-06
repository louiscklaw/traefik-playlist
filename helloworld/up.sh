#!/usr/bin/env bash

set -ex

docker network create web || true

docker-compose kill
docker-compose rm -f
docker-compose down -v --remove-orphans

docker-compose build

# docker-compose up -d
docker-compose -f ./whoami.yml up -d
docker-compose -f ./traefik.yml up -d
# docker-compose up -d --scale whoami=2

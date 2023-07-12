#!/usr/bin/env bash

set -x

docker kill $(docker ps -qa)
docker rm $(docker ps -qa)

sleep 1

sudo rm -rf ./volumes/letsencrypt/*

set -ex


docker compose kill 
docker compose down

docker compose build

docker compose up -d

docker compose logs -f

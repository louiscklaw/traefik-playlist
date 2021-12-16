#!/usr/bin/env bash

set -ex

docker-compose up -d reverse-proxy

docker-compose up -d whoami

# docker-compose up -d --scale whoami=2

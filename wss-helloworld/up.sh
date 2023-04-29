#!/usr/bin/env bash

set -x

docker compose kill
docker compose down

set -ex

docker compose up --build

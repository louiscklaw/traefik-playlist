#!/usr/bin/env bash

set -ex

# curl http://whoami.docker.localhost


# npx wscat -c ws://wss.docker.localhost
npx wscat -n -c wss://wss.docker.localhost
# npx wscat -c ws://localhost:3000


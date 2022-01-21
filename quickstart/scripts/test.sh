#!/usr/bin/env bash

set -ex

curl http://127.0.0.1 -H "Host: whoami.example.com"

curl http://127.0.0.1 -H "Host: localhost"

#!/bin/env bash
set -e

cd /files
docker ps -a

docker compose config --format json | jq '.services | keys'

./getopts.sh -t "Hello, world :)"


yq '.services.*.image' /files/docker-compose.yml

#!/bin/bash
set -e

docker login --username $DOCKER_USER --password $DOCKER_PASS
docker-compose build
docker-compose push
#!/bin/bash
set -e


docker login --username $DOCKER_USER --password $DOCKER_PASS
docker-compose -f docker-compose.yaml build --no-cache --parallel
docker-compose -f docker-compose.yaml push
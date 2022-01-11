#!/bin/bash
set -e

docker login --username $DOCKER_USER --password $DOCKER_PASS
docker build --cache-from shardlabs/shard-labs-web:latest -t shardlabs/shard-labs-web:latest .
docker push shardlabs/shard-labs-web:latest
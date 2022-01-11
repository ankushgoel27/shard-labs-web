#!/bin/bash
set -e

docker build --cache-from shardlabs/shard-labs-web:latest -t shardlabs/shard-labs-web:latest .

docker login --username $DOCKER_USER --password $DOCKER_PASS
docker push shardlabs/shard-labs-web:latest
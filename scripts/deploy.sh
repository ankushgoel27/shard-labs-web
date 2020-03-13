#!/bin/bash
set -e

ssh -o "StrictHostKeyChecking no" user@ssh.shardlabs.io "\
mkdir -p $REPO_PATH_TEST && \
cd $REPO_PATH_TEST && \
curl https://raw.githubusercontent.com/Shard-Labs/shard-labs-web/master/docker-compose.yaml > docker-compose.yaml && \
docker-compose pull && \
COMPOSE_PROJECT_NAME=shard-labs-web-stable docker-compose up -d"
#!/bin/bash
set -e

ssh -o StrictHostKeyChecking=no ubuntu@ec2-3-68-224-214.eu-central-1.compute.amazonaws.com "\
    curl https://raw.githubusercontent.com/Shard-Labs/shard-labs-web/master/docker-compose.yaml > ~/docker-compose.yaml && \
    docker-compose pull && \
    docker-compose up -d --force-recreate"

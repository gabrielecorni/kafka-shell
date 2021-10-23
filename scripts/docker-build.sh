#!/bin/bash
LOCAL_IMAGE=ubuntu-shell:master-latest

echo "Building $LOCAL_IMAGE..."

docker build \
    -f docker/Dockerfile \
    -t $LOCAL_IMAGE \
    --build-arg NEW_USER="gabriele" \
    .

echo "Success"
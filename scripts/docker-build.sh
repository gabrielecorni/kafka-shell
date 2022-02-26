#!/bin/bash
LOCAL_IMAGE=kafka-shell:master-latest

echo "Building $LOCAL_IMAGE..."

docker build \
    -f docker/Dockerfile \
    -t $LOCAL_IMAGE \
    --build-arg NEW_USER="big-data-user" \
    .

echo "Success"
#!/bin/bash
source scripts/conf-dev.sh

LOCAL_IMAGE=kafka-shell:master-latest
REMOTE_IMAGE=$REGISTRY_NAME/$REGISTRY_USER/$LOCAL_IMAGE

echo "Logging into $REGISTRY_NAME/$REGISTRY_USER..."
echo "$REGISTRY_PASS" | docker login --username "$REGISTRY_USER" --password-stdin $REGISTRY_NAME

echo "Tagging local image $LOCAL_IMAGE to $REMOTE_IMAGE..."
docker tag \
    $LOCAL_IMAGE \
    $REMOTE_IMAGE

echo "Pushing $REMOTE_IMAGE..."
docker push \
    $REMOTE_IMAGE

echo "Success"
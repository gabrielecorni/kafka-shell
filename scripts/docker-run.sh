#!/bin/bash
source scripts/conf-dev.sh

LOCAL_IMAGE=kafka-shell:master-latest
REMOTE_IMAGE=$REGISTRY_NAME/$REGISTRY_USER/$LOCAL_IMAGE

echo "Running $REMOTE_IMAGE..."

docker run \
    -it \
    --rm \
    --name $CONTAINER_NAME \
    --hostname $CONTAINER_NAME \
    --env DATAGEN="$DATAGEN" \
    --network host \
    $REMOTE_IMAGE
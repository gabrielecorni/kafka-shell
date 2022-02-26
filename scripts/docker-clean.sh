#!/bin/bash

LOCAL_IMAGE=kafka-shell:master-latest
REMOTE_IMAGE=$REGISTRY_NAME/$REGISTRY_USER/$LOCAL_IMAGE

echo "Cleaning $LOCAL_IMAGE..."
docker rmi -f $LOCAL_IMAGE

echo "Cleaning $REMOTE_IMAGE..."
docker rmi -f $REMOTE_IMAGE

echo "Success"
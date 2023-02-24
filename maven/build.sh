#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILDROOT=$DIR/..

REPO="dakepilogue"
CONTAINER="maven"
TAG="3.6.3-jdk-8-slim"

IMAGE_NAME="${REPO}/${CONTAINER}:${TAG}"

cd $BUILDROOT
# Build docker --no-cache
cmd="docker build -t $IMAGE_NAME -f $DIR/Dockerfile $BUILDROOT"
echo $cmd
eval $cmd
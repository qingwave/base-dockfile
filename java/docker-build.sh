#!/bin/bash
set -e

MVN_TAG="maven:3.6.1-jdk-8"
JRE_TAG="openjdk:8-jre-alpine"

cd $(dirname $0)

if [ "$1" == "mvn" ]; then
    TAG=$MVN_TAG
    DOCKERFILE='Dockerfile.mvn'
elif [ "$1" == "jre" ]; then
    TAG=$JRE_TAG
    DOCKERFILE='Dockerfile.jre'
else
    echo "cannot find $1"
    exit 1
fi

docker build -t $TAG -f $DOCKERFILE .

if [ "$2" == "push" ]; then
    docker push $TAG
fi

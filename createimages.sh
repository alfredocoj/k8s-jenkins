#!/bin/bash

IMAGES_NAMES=( "jenkins-ci-master" "jenkins-jnlp-slave" )
DOCKERFILES=( "Dockerfile" "DockerfileSlave" )
REGISTRY=alfredocoj
VERSION=latest

for i in "${!IMAGES_NAMES[@]}"
do

    docker build -t ${IMAGES_NAMES[$i]} -f ${DOCKERFILES[$i]} .

    IMAGE_HASH=$(docker images -q ${IMAGES_NAMES[$i]})

    docker tag $IMAGE_HASH $REGISTRY/${IMAGES_NAMES[$i]}:$VERSION

    docker push $REGISTRY/${IMAGES_NAMES[$i]}:$VERSION
done
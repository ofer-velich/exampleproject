#!/usr/bin/env bash

set -ev

GIT_COMMIT=`git rev-parse HEAD`
docker login -u "$DOCKER_USERNAME" -p "$DOCKER_PASSWORD"
docker build -t ofervelich/test:$TRAVIS_COMMIT .
docker push ofervelich/test:$TRAVIS_COMMIT
OMMIT
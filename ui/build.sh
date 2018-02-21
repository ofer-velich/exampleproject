#!/usr/bin/env bash

set -ev

echo "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
echo "branch $BRANCH"
cd ui
    docker run --rm -v $PWD:/data digitallyseamless/nodejs-bower-grunt npm install
    docker run --rm -v $PWD:/data digitallyseamless/nodejs-bower-grunt bower install
    docker run --rm -v $PWD:/data digitallyseamless/nodejs-bower-grunt grunt build --force
cd -


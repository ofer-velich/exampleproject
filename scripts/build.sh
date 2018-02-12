#!/usr/bin/env bash

set -ev

GIT_COMMIT=`git rev-parse HEAD`

cd ui
    docker run --rm -v $PWD:/data digitallyseamless/nodejs-bower-grunt npm install
    docker run --rm -v $PWD:/data digitallyseamless/nodejs-bower-grunt bower install
    docker run --rm -v $PWD:/data digitallyseamless/nodejs-bower-grunt grunt build --force
cd -

#docker build -t logzio/apollo:$GIT_COMMIT .
#docker push logzio/apollo:$GIT_COMMIT
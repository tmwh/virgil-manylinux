#!/bin/sh
TAG=${TRAVIS_COMMIT:-`git rev-parse HEAD`}
docker build --rm -t tmwh/virgil-manylinux1_x86_64:$TAG -f docker/Dockerfile-x86_64 docker/
docker build --rm -t tmwh/virgil-manylinux1_i686:$TAG -f docker/Dockerfile-i686 docker/


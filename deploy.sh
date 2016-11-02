#!/bin/bash
docker login -u $HUB_USERNAME -p $HUB_PASSWORD

TAG=${TRAVIS_COMMIT:-`git rev-parse HEAD`}
for name in tmwh/virgil-manylinux1_i686 tmwh/virgil-manylinux1_x86_64; do
  docker tag ${name}:${TAG} ${name}:latest
  docker push ${name}:latest
done

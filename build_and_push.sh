#!/usr/bin/env sh

export REPO=miceportal/acme.sh
export SHA=`git rev-parse --verify HEAD`

docker build --pull -t=$REPO:$SHA .
docker push $REPO:$SHA
docker tag $REPO:$SHA $REPO:latest
docker push $REPO:latest
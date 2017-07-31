#!/bin/bash

docker run --rm -v $PWD:/srv "tsondt/github.io" check ||
docker run --rm -v $PWD:/srv "tsondt/github.io" install &&
docker run -ti --rm -v $PWD:/srv -p 4000:4000 "tsondt/github.io" exec jekyll serve --host 0.0.0.0 --port 4000 $1

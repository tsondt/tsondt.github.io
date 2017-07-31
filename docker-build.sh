#!/usr/bin/env bash -eu

CONTAINER_NAME="tsondt/tsondt.github.io"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build -t "${CONTAINER_NAME}" "$DIR"

#!/usr/bin/env bash

set -euo pipefail

source ./update-dockerfile.sh

echo "Using Debian package mono-runtime=$DEBIAN_MONO_VERSION of Mono $MONO_VERSION"

echo "Building Docker image ..."
docker build -t sunside/xenial-mono:$MONO_VERSION $@ -f Dockerfile.mono .

echo "Built image sunside/xenial-mono:$MONO_VERSION"

docker tag sunside/xenial-mono:$MONO_VERSION sunside/mono:latest
echo "Tagged image sunside/xenial-mono:latest"

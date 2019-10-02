#!/usr/bin/env bash

set -euo pipefail

UBUNTU_MONO_VERSION=6.4.0.198-0xamarin3+ubuntu1804b1
MONO_VERSION=6.4.0.198

echo "Using Debian package mono-runtime=$UBUNTU_MONO_VERSION of Mono $MONO_VERSION"

echo "Building Docker image ..."
docker build -t sunside/disco-mono:$MONO_VERSION $@ -f Dockerfile.mono .

echo "Built image sunside/disco-mono:$MONO_VERSION"

docker tag sunside/disco-mono:$MONO_VERSION sunside/mono:latest
echo "Tagged image sunside/disco-mono:latest"

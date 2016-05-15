#!/usr/bin/env bash

echo "Obtaining current Mono version ..."
DEBIAN_MONO_VERSION=$(curl -s -X GET -H "Cache-Control: no-cache" 'http://origin-download.mono-project.com/repo/debian/dists/nightly/main/binary-amd64/Packages' | grep "Version: "| awk '{print $2}' | sort -r | head -n 1)
MONO_VERSION=$(echo $DEBIAN_MONO_VERSION | cut -d "-" -f 1)

if [ $0 == "$BASH_SOURCE" ]; then
	echo $DEBIAN_MONO_VERSION
	echo $MONO_VERSION
fi

export DEBIAN_MONO_VERSION
export MONO_VERSION
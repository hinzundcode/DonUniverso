#!/bin/sh

echo "start build"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile $(pwd)/unity.log \
	-projectpath $(pwd) \
	-buildOSXUniversalPlayer "$(pwd)/DonUniverso.app" \
	-quit

cat $(pwd)/unity.log

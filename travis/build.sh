#!/bin/sh

echo "start build"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
	-batchmode \
	-nographics \
	-silent-crashes \
	-logFile \
	-projectpath $(pwd)/beansjam_unity \
	-buildOSXUniversalPlayer "$(pwd)/DonUniverso.app" \
	-quit

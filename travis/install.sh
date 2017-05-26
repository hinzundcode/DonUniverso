#!/bin/sh

#http://netstorage.unity3d.com/unity/2860b30f0b54/MacEditorInstaller/Unity-5.6.1f1.pkg

BASE_URL=http://download.unity3d.com/download_unity
HASH=497a0f351392
VERSION=5.6.1f1

download() {
	file=$1
	url="$BASE_URL/$HASH/$package"
	
	echo "Download from $url: "
	curl -o `basename "$package"` "$url"
}

install() {
	package=$1
	download "$package"
	
	echo "Installing " `basename "$package"`
	sudo installer -dumplog -package `basename "$package"` -target /
}

install "MacEditorInstaller/Unity-$VERSION.pkg"

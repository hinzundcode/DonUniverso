#!/bin/sh

echo 'Downloading Unity 5.6.1f1: '
wget -O Unity.pkg http://netstorage.unity3d.com/unity/2860b30f0b54/MacEditorInstaller/Unity-5.6.1f1.pkg

echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /

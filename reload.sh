#!/bin/bash

VERSION=3.2.0

wget -q https://github.com/dart-lang/sdk/archive/refs/tags/$VERSION.zip
unzip sdk
cp -r sdk/runtime/include/* .
rm sdk
git tag #VERSION
git add .
git commit -am "reload $VERSION"
git push --tags -f
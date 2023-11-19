#!/bin/bash

VERSION=3.2.0

rm -rf target
mkdir -p target
cd target
wget -q https://github.com/dart-lang/sdk/archive/refs/tags/$VERSION.zip
unzip -q $VERSION.zip
cp -r sdk-$VERSION/runtime/include/* ../
cd .. && rm -rf target
git tag $VERSION
git add .
git commit -am "reload $VERSION"
git push --tags -f
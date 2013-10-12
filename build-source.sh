#!/bin/bash

backup=`pwd`
DIR="$( cd "$( dirname "$0" )" && pwd )"
cd "$DIR"

sh ./extract-strings.sh

rm -rf ../builds
bzr builddeb --source --native --build-dir ../builds/temp --result-dir ../builds
ls -l ../builds

cd "$backup"
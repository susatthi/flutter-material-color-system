#!/bin/bash

BUILD_NUMBER=$1
VERSION_JSON_PATH=build/web/version.json

# version.json を書き換える
sed -i -e "s/\"}/\",\"build_number\":\"$BUILD_NUMBER\"}/g" ${VERSION_JSON_PATH}

rm -rf ${VERSION_JSON_PATH}-e

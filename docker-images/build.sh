#!/bin/bash

set -e
cd $(dirname $0)
(
cd ..
./build.sh
cp bin/pilot docker-images/
)

docker build -t d.v87.us/fluentd-pilot .


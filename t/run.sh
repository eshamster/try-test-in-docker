#!/bin/sh

set -eux

base_dir=$(dirname ${0})
cd ${base_dir}
docker build -t try-test .
cd ..
docker run -v $(pwd):/root/.roswell/local-projects/try-test-in-docker -t try-test

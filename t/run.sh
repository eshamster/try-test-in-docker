#!/bin/sh

set -eux

base_dir=$(dirname ${0})
cd ${base_dir}/..
docker run -v $(pwd):/root/.roswell/local-projects/try-test-in-docker -t test

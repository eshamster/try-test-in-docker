#!/bin/sh

set -eux

base_dir=$(dirname ${0})
cd ${base_dir}
docker build -t test .

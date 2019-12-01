#!/bin/sh

set -eux

ros use ${LISP}

cd ~/.roswell/local-projects/try-test-in-docker
rove *.asd

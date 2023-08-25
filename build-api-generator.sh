#!/bin/bash

pushd tools/openapi2uswds
    docker build -t fac/o2u -f Dockerfile .
popd
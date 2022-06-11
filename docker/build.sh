#!/bin/bash

cd ../..
docker build --network=host -t naoki:denseflow -f denseflow/docker/Dockerfile .

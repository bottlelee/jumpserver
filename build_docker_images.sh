#!/usr/bin/env bash
docker build . -f Dockerfile-base -t jumpserver:base
docker build . -f Dockerfile-jumpserver -t jumpserver:prod

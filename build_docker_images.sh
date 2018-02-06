#!/usr/bin/env bash
docker build . -f Dockerfile-base -t jumpserver:base
docker build . -f Dockerfile-jumpserver -t jumpserver:prod
docker system prune -f
docker volume create --name=jms_data
docker volume create --name=jms_db
docker-compose up -d db
sleep 30
docker-compose up -d jumpserver

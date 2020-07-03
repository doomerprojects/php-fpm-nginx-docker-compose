#!/bin/sh -eux

sh ${PWD}/bin/init-www.sh
mkdir -p ${PWD}/logs/nginx
docker-compose up -d
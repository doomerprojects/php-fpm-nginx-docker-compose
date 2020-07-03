#!/bin/sh -eux

docker-compose build --no-cache php
docker-compose down
sh ${PWD}/bin/init.sh
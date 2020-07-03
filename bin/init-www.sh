#!/bin/sh -eux

mkdir -p ${PWD}/sourcefiles/www
useradd -m www
chmod -R 755 ${PWD}/sourcefiles/www
chown -R www:www ${PWD}/sourcefiles/www
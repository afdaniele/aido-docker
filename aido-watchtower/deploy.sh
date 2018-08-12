#!/usr/bin/env bash

# create container if it does not exist
docker volume create aido_watchtower_volume

# run container
docker run --name 'aido-dashboard' -e HOST_HOSTNAME=`hostname` -p 80:80 -v aido_watchtower_volume:/var/www/html/public_html/system/packages afdaniele/compose-aido-watchtower:latest

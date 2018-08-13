#!/usr/bin/env bash

# create container if it does not exist
docker volume create aido_watchtower_volume

# run container
docker run --name 'aido-watchtower-dashboard' -v aido_watchtower_volume:/var/www/html afdaniele/aido-watchtower-dashboard:latest

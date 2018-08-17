#!/usr/bin/env bash

# create container if it does not exist
docker volume create blockly_frontend_volume

# run container
docker run --name 'blockly_frontend' -v blockly_frontend_volume:/var/www/html afdaniele/rpi-blockly-duckiebot-frontend:latest

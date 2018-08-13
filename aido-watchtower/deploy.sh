#!/usr/bin/env bash

# run container
docker run --name 'aido-watchtower' --network="host" --device=/dev/vchiq:/dev/vchiq afdaniele/aido-watchtower:latest

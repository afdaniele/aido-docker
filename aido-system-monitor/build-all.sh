#!/bin/bash

docker build -t afdaniele/ros-system-monitor-aido:latest ./aido/
docker build -t afdaniele/ros-system-monitor-aido-standalone:latest ./aido-standalone/

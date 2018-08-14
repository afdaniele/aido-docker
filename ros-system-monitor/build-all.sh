#!/bin/bash

docker build -t afdaniele/ros-system-monitor:latest ./
docker build -t afdaniele/ros-system-monitor-standalone:latest ./standalone/
docker build -t afdaniele/ros-system-monitor-aido:latest ./aido/
docker build -t afdaniele/ros-system-monitor-aido-standalone:latest ./aido-standalone/

#!/usr/bin/env bash

git -C /home/software/catkin_ws/src/ros-system-monitor pull origin master

source /home/software/catkin_ws/devel/setup.bash
roslaunch /webserver_sysmonitor.launch

#!/usr/bin/env bash

source /home/software/catkin_ws/devel/setup.bash
roslaunch system_monitor system_monitor.launch machine_name:=rpi

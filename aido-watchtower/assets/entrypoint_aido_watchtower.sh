#!/usr/bin/env bash

# source docker env and catkin_ws
source /home/software/docker/env.sh
source /home/software/catkin_ws/devel/setup.bash

# launch camera node
roslaunch duckietown camera.launch veh:=${HOSTNAME}

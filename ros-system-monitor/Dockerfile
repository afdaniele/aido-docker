# Base image
FROM duckietown/rpi-ros-kinetic-base:latest

# arguments
ARG PORT=9001
ARG ROS_MASTER_URI=http://localhost:11311/

# install packages
RUN apt-get update && apt-get install -q -y \
		ntpdate \
		sysstat \
    && rm -rf /var/lib/apt/lists/*

# change shell
SHELL ["/bin/bash", "-c"]

# build system_monitor
RUN mkdir -p /home/software/catkin_ws/src
RUN git clone https://github.com/afdaniele/ros-system-monitor /home/software/catkin_ws/src/ros-system-monitor
RUN source /opt/ros/$ROS_DISTRO/setup.bash && catkin_make -C /home/software/catkin_ws

# copy launch script
COPY assets/launch_system_monitor.sh /launch_system_monitor.sh
COPY assets/system_monitor.launch /system_monitor.launch
RUN ["chmod", "+x", "/launch_system_monitor.sh"]

# copy config file
COPY assets/system_monitor_config.yaml /system_monitor_config.yaml

# configure entrypoint
ENTRYPOINT ["/ros_entrypoint.sh", "/launch_system_monitor.sh"]

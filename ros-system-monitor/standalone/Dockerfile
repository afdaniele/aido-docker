# Base image
FROM afdaniele/ros-system-monitor:latest

# install packages
RUN apt-get update && apt-get install -q -y \
		# devel-only
		ros-$ROS_DISTRO-rosbridge-server \
    && rm -rf /var/lib/apt/lists/*

# copy launch scripts
COPY assets/launch_system_monitor.sh /launch_system_monitor.sh
COPY assets/webserver_sysmonitor.launch /webserver_sysmonitor.launch
RUN ["chmod", "+x", "/launch_system_monitor.sh"]

# configure entrypoint
ENTRYPOINT ["/ros_entrypoint.sh", "/launch_system_monitor.sh"]

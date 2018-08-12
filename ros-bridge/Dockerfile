# Base image
FROM duckietown/rpi-duckiebot-base:latest

# arguments
ARG PORT=9001
ENV WEBSOCKET_BRIDGE_PORT $PORT

# install packages
RUN apt-get update && apt-get install -q -y \
		ros-$ROS_DISTRO-rosbridge-server \
    && rm -rf /var/lib/apt/lists/*

# copy launch script
COPY assets/launch_websocket_bridge.sh /launch_websocket_bridge.sh
RUN ["chmod", "+x", "/launch_websocket_bridge.sh"]

# configure entrypoint
ENTRYPOINT ["/ros_entrypoint.sh", "/launch_websocket_bridge.sh"]

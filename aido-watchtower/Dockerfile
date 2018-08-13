# Base image
FROM duckietown/rpi-duckiebot-base:latest

# add user to video group
RUN usermod -a -G video root

# Install ENTRYPOINT script
ADD assets/entrypoint_aido_watchtower.sh /entrypoint_aido_watchtower.sh
RUN ["chmod", "+x", "/entrypoint_aido_watchtower.sh"]

# Configure ENTRYPOINT
ENTRYPOINT ["/ros_entrypoint.sh", "/entrypoint_aido_watchtower.sh"]

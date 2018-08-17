# Base image
FROM afdaniele/compose-arm32v7:latest

# Install ENTRYPOINT script
ADD assets/entrypoint_duckiebot.sh /root/entrypoint_duckiebot.sh
RUN ["chmod", "+x", "/root/entrypoint_duckiebot.sh"]

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_duckiebot.sh"]

# Base image
FROM afdaniele/compose-arm32v7:latest

# enable ARM
RUN [ "cross-build-start" ]

# Install ENTRYPOINT script
ADD assets/entrypoint_duckiebot.sh /root/entrypoint_duckiebot.sh
RUN chmod +x /root/entrypoint_duckiebot.sh

# disable ARM
RUN [ "cross-build-end" ]

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_duckiebot.sh"]

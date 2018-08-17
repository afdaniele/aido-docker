# Base image
FROM afdaniele/compose-arm32v7:latest

# enable ARM
RUN [ "cross-build-start" ]

# Install ENTRYPOINT script
ADD assets/entrypoint_watchtower.sh /root/entrypoint_watchtower.sh
RUN chmod +x /root/entrypoint_watchtower.sh

# disable ARM
RUN [ "cross-build-end" ]

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_watchtower.sh"]

# Base image
FROM afdaniele/compose-arm32v7:latest

# Install ENTRYPOINT script
ADD assets/entrypoint_aido_watchtower.sh /root/entrypoint_aido_watchtower.sh
RUN ["chmod", "+x", "/root/entrypoint_aido_watchtower.sh"]

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_aido_watchtower.sh"]

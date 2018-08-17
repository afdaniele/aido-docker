# Base image
FROM afdaniele/compose-arm32v7:latest

# Install ENTRYPOINT script
ADD assets/entrypoint_watchtower.sh /root/entrypoint_watchtower.sh
RUN chmod +x /root/entrypoint_watchtower.sh

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_watchtower.sh"]

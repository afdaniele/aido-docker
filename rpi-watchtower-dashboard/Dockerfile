# Base image
FROM afdaniele/compose-arm32v7:latest

# install ENTRYPOINT script
ADD assets/entrypoint_watchtower.sh /root/entrypoint_watchtower.sh

# configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_watchtower.sh"]

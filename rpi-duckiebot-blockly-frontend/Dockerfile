# Base image
FROM afdaniele/compose-arm32v7:latest

# install ENTRYPOINT script
ADD assets/entrypoint_blockly_frontend.sh /root/entrypoint_blockly_frontend.sh

# configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_blockly_frontend.sh"]

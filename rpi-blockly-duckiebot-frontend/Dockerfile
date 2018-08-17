# Base image
FROM afdaniele/compose-arm32v7:latest

# Install ENTRYPOINT script
ADD assets/entrypoint_blockly_frontend.sh /root/entrypoint_blockly_frontend.sh

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_blockly_frontend.sh"]

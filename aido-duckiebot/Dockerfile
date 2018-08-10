# Base image
FROM afdaniele/compose-arm32v7:latest

# Constants
ENV COMPOSE_PACKAGES_DIR="/var/www/html/public_html/system/packages"
ENV HOST_HOSTNAME="duckiebot"

# Install ENTRYPOINT script
ADD assets/entrypoint_aido_duckiebot.sh /root/entrypoint_aido_duckiebot.sh
RUN ["chmod", "+x", "/root/entrypoint_aido_duckiebot.sh"]

# Configure \compose\
RUN python /var/www/html/configure.py --cache_enabled 1

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_aido_duckiebot.sh"]

# Configure volume
VOLUME $COMPOSE_PACKAGES_DIR/

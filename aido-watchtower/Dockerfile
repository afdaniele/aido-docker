# Base image
FROM afdaniele/compose-arm32v7:latest

# Constants
ENV COMPOSE_PACKAGES_DIR="/var/www/html/public_html/system/packages"
ENV HOST_HOSTNAME="watchtower"

# Install ENTRYPOINT script
ADD assets/entrypoint_aido_watchtower.sh /root/entrypoint_aido_watchtower.sh
RUN ["chmod", "+x", "/root/entrypoint_aido_watchtower.sh"]

# Configure \compose\
RUN python /var/www/html/configure.py --cache_enabled 1

# Configure ENTRYPOINT
ENTRYPOINT ["/root/entrypoint_aido_watchtower.sh"]

# Configure volume
VOLUME $COMPOSE_PACKAGES_DIR/

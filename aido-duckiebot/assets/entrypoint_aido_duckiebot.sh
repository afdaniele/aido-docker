#!/usr/bin/env bash

# check volume
mountpoint -q $COMPOSE_PACKAGES_DIR
if [ $? -ne 0 ]; then
    echo "WARNING: The path '$COMPOSE_PACKAGES_DIR' is neither a VOLUME nor a MOUNTPOINT. All the changes will be deleted with the container."
fi

# clone or update the `duckietown` package
git -C $COMPOSE_PACKAGES_DIR/duckietown pull origin master || git clone https://github.com/afdaniele/compose-pkg-duckietown $COMPOSE_PACKAGES_DIR/duckietown

# clone or update the `aido-common` package
git -C $COMPOSE_PACKAGES_DIR/aido pull origin master || git clone https://github.com/afdaniele/compose-pkg-aido-common $COMPOSE_PACKAGES_DIR/aido

# clone or update the `aido-duckiebot` package
git -C $COMPOSE_PACKAGES_DIR/aido_duckiebot pull origin master || git clone https://github.com/afdaniele/compose-pkg-aido-duckiebot $COMPOSE_PACKAGES_DIR/aido_duckiebot

# configure \compose\
python /var/www/html/configure.py --guest_default_page telemetry --navbar_title $HOST_HOSTNAME --website_name "AIDO Duckiebot Dashboard" \
    --login_enabled 0 --logo_white http://$HOST_HOSTNAME/data/aido/images/AIDO_logo_negative_navbar.svg \
    --logo_black http://$HOST_HOSTNAME/data/aido/images/AIDO_logo_positive.svg

# run base entrypoint
/root/entrypoint.sh

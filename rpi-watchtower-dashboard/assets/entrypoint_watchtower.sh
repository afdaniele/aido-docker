#!/usr/bin/env bash

# constants
HOSTNAME=$(hostname)

# clone or update the `duckietown` package
git -C $COMPOSE_PACKAGES_DIR/duckietown pull origin master || git clone https://github.com/afdaniele/compose-pkg-duckietown $COMPOSE_PACKAGES_DIR/duckietown

# clone or update the `aido-common` package
git -C $COMPOSE_PACKAGES_DIR/aido pull origin master || git clone https://github.com/afdaniele/compose-pkg-aido-common $COMPOSE_PACKAGES_DIR/aido

# clone or update the `aido-watchtower` package
git -C $COMPOSE_PACKAGES_DIR/aido_watchtower pull origin master || git clone https://github.com/afdaniele/compose-pkg-aido-watchtower $COMPOSE_PACKAGES_DIR/aido_watchtower

# configure \compose\
python /var/www/html/configure.py --guest_default_page monitor --navbar_title $HOSTNAME --website_name "AIDO Watchtower Dashboard" \
    --login_enabled 0 --cache_enabled 1 --logo_white http://$HOSTNAME.local/data/aido/images/AIDO_logo_negative_navbar.svg \
    --logo_black http://$HOSTNAME.local/data/aido/images/AIDO_logo_positive.svg

# run base entrypoint
/root/entrypoint.sh

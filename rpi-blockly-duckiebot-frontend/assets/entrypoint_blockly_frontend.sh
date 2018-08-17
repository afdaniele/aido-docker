#!/usr/bin/env bash

# constants
HOSTNAME=$(hostname)

# install/update compose
/root/install_compose.sh

# check volume
mountpoint -q $COMPOSE_DIR
if [ $? -ne 0 ]; then
    echo "WARNING: The path '$COMPOSE_DIR' is neither a VOLUME nor a MOUNTPOINT. All the changes will be deleted with the container."
fi

# clone or update the `duckietown` package
git -C $COMPOSE_PACKAGES_DIR/duckietown pull origin master || git clone --depth 1 https://github.com/afdaniele/compose-pkg-duckietown $COMPOSE_PACKAGES_DIR/duckietown

# clone or update the `duckietown-blockly` package
git -C $COMPOSE_PACKAGES_DIR/duckietown_blockly pull --recurse-submodules origin master || git clone --depth 1 --recurse-submodules https://github.com/afdaniele/compose-pkg-duckietown-blockly $COMPOSE_PACKAGES_DIR/duckietown_blockly

# configure \compose\
python /var/www/html/configure.py --guest_default_page blockly --navbar_title $HOSTNAME --website_name "Duckiebot Dashboard" \
    --login_enabled 0 --cache_enabled 1 --logo_white http://$HOSTNAME.local/data/duckietown/images/logo.png \
    --logo_black http://$HOSTNAME.local/data/duckietown/images/logo.png

# run base entrypoint
/root/entrypoint.sh

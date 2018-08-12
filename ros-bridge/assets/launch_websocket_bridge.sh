#!/usr/bin/env bash

roslaunch rosbridge_server rosbridge_websocket.launch port:=$WEBSOCKET_BRIDGE_PORT

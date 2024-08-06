#!/bin/bash

HOST_UID=${LOCAL_UID:-9001}
HOST_GID=${LOCAL_GID:-9001}

sudo usermod -u $HOST_UID $(whoami)
sudo groupmod -g $HOST_GID $(whomai)

id $USER_NAME

exec "$@"
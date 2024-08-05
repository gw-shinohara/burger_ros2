#!/bin/bash

USER_ID=${LOCAL_UID:-9001}
GROUP_ID=${LOCAL_GID:-9001}
USER_NAME=${LOCAL_USER:locker}
GROUP_NAME=${LOCAL_GROUP:locker}

echo "Starting with UID : $USER_ID, GID: $GROUP_ID"

sudo usermod -u $USER_ID $USER_NAME 
sudo groupmod -g $GROUP_ID $GROUP_NAME 

id $USER_NAME

exec "$@"
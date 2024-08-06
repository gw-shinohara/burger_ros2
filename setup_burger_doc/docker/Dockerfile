ARG BASE_IMAGE="ros:humble-ros-core-jammy"

# ------------ Setting baseimage
FROM $BASE_IMAGE
# ------------ Arguments
ARG TIME_ZONE="Asia/Tokyo"
ENV DISPLAY="host.docker.internal:0.0"
ENV DEBIAN_FRONTEND="noninteractive"
# ------------ Setting timezone
RUN apt-get update && apt-get install -y tzdata
ENV TZ=$TIME_ZONE 
# ------------ Upgrade apt-get
RUN apt-get update && apt-get upgrade -y
WORKDIR /home
RUN apt-get install -y python3 python3-pip && \
    apt-get install -y wget vim git

# ------------ Setting password to root
ARG ROOT_PASS="root"
RUN echo 'root:root' | chpasswd

# ------------ Add locker user
ARG USER_NAME="locker"
ARG LOCAL_UID="9999"
ARG LOCAL_GID="9999"

# Create the user of locker
RUN groupadd --gid $LOCAL_GID ${USER_NAME} \
    && useradd --uid $LOCAL_UID --gid $LOCAL_GID -s /usr/bin/bash -m ${USER_NAME} \
    # [Optional] Add sudo support. Omit if you don't need to install software after connecting.
    && apt-get update \
    && apt-get install -y sudo

# Change password
ARG USER_PASS="locker"
RUN echo "${USER_NAME}":"${USER_PASS}" | chpasswd\
    && usermod -G sudo ${USER_NAME}

# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
USER ${USER_NAME}
WORKDIR /home/${USER_NAME}

CMD ["bash"]
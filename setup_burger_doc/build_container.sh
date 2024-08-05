USER_NAME="bloom"
GROUP_NAME="bloom"
docker stop bloom-humble-ros-core
docker run -it --rm --name bloom-humble-ros-core -e LOCAL_UID=$(id -u $USER) -e LOCAL_GID=$(id -g $USER) -e LOCAL_USER=$USER_NAME -e LOCAL_GROUP=$GROUP_NAME seeds:humble-ros-core bash

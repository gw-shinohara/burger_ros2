LAUNCH_IMAGE="seeds:humble-ros-core"

docker stop bloom-humble-ros-core
docker run -it --rm \
    -p 122:22 \
    --name bloom-humble-ros-core \
    -v ./docker/pkgs:/home/bloom \
    $LAUNCH_IMAGE

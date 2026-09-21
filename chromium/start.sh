#!/bin/bash

xhost +

docker run --rm -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /tmp/.docker.Xauthority -e XAUTHORITY=/tmp/.docker.Xauthority \
--net=host \
--privileged \
--name chromium \
chromium:latest --no-sandbox


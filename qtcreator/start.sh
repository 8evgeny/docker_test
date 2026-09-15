#!/bin/bash

xhost +

docker run --rm -it -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix  \
-v /tmp/.docker.Xauthority -e XAUTHORITY=/tmp/.docker.Xauthority \
-v "/home/user/QtProg/:/home/user/QtProg" \
-w "/home/user/QtProg" \
--net=host \
--privileged \
--name qtcreator \
--cgroupns host \
--cap-add=ALL \
qtcreator:latest

#--user user:user \

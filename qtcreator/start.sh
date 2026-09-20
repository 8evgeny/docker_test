#!/bin/bash

xhost +



docker run -it --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  -v $(pwd):/app \
  --name qtcreator \
  qtcreator-container:latest \
  bash

# Собралось нет исполняемого файла

#  /opt/qtcreator/bin/qtcreator



#docker run --rm -e DISPLAY=$DISPLAY \
#-v /tmp/.X11-unix:/tmp/.X11-unix  \
#-v /tmp/.docker.Xauthority -e XAUTHORITY=/tmp/.docker.Xauthority \
#--net=host \
#--privileged \
#--name qtcreator \
#--cgroupns host \
#--cap-add=ALL \
#qtcreator:latest

#--user user:user \
#-v "/home/user/QtProg/:/home/user/QtProg" \
#-w "/home/user/QtProg" \

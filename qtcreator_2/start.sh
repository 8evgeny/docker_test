#!/bin/bash

xhost +

docker run -it --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
  --name qtcreator \
  --entrypoint /bin/bash qtdev



#!/bin/bash


  docker run --rm -it -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix  \
  -v /tmp/.docker.Xauthority -e XAUTHORITY=/tmp/.docker.Xauthority \
  --net=host \
  --privileged \
  --name rk3588-dev \
  rk3588-dev:latest

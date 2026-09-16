FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV QT_QPA_PLATFORM=xcb
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update && apt-get install -y \
    qtcreator \
    build-essential \
    cmake \
    ninja-build \
    git \
    gdb \
    qt6-base-dev \
    qt6-tools-dev \
    libxcb-xinerama0 \
    libxcb-cursor0 \
    libxkbcommon-x11-0 \
    xauth \
    dbus-x11 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["qtcreator"]
  

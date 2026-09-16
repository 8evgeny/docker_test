FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    git \
    rsync \
    openssh-client \
    pkg-config \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    binutils-aarch64-linux-gnu \
    qt6-base-dev \
    qt6-base-dev-tools \
    qt6-tools-dev \
    qt6-tools-dev-tools \
    qt6-l10n-tools \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src

ENV SYSROOT=/opt/sysroot
ENV QT_HOST_PATH=/usr/lib/x86_64-linux-gnu/qt6

CMD ["/bin/bash"]

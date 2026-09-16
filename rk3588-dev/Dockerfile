FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-aarch64-linux-gnu \
    g++-aarch64-linux-gnu \
    binutils-aarch64-linux-gnu \
    cmake \
    ninja-build \
    git \
    pkg-config \
    rsync \
    openssh-client \
    gdb-multiarch \
    file \
    vim \
    mc 

ENV CC=aarch64-linux-gnu-gcc
ENV CXX=aarch64-linux-gnu-g++

RUN apt-get install -y qtcreator

WORKDIR /workspace

#&& rm -rf /var/lib/apt/lists/*


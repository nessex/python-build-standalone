# Debian Stretch.
FROM ubuntu:22.04
MAINTAINER Gregory Szorc <gregory.szorc@gmail.com>

RUN groupadd -g 2000 build && \
    useradd -u 2000 -g 2000 -d /build -s /bin/bash -m build && \
    mkdir /tools && \
    chown -R build:build /build /tools

ENV HOME=/build \
    SHELL=/bin/bash \
    USER=build \
    LOGNAME=build \
    HOSTNAME=builder \
    DEBIAN_FRONTEND=noninteractive

CMD ["/bin/bash", "--login"]
WORKDIR '/build'

RUN apt-get update

# Host building.
RUN apt-get install -y \
    build-essential \
    bzip2 \
    gcc \
    g++ \
    libc6-dev \
    libffi-dev \
    make \
    patch \
    perl \
    pkg-config \
    tar \
    xz-utils \
    unzip \
    zip \
    zlib1g-dev

# Cross-building.
RUN apt-get install -y \
    gcc-aarch64-linux-gnu \
    gcc-arm-linux-gnueabi \
    gcc-arm-linux-gnueabihf \
    gcc-mips-linux-gnu \
    gcc-mips64el-linux-gnuabi64 \
    gcc-mipsel-linux-gnu \
    gcc-powerpc64le-linux-gnu \
    gcc-s390x-linux-gnu \
    libc6-dev-arm64-cross \
    libc6-dev-armel-cross \
    libc6-dev-armhf-cross \
    libc6-dev-mips-cross \
    libc6-dev-mips64el-cross \
    libc6-dev-mipsel-cross \
    libc6-dev-ppc64el-cross \
    libc6-dev-s390x-cross

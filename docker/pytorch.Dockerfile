FROM nvcr.io/nvidia/cuda:10.2-cudnn8-devel-ubuntu18.04

ENV DEBIAN_FRONTEND noninteractive

# Install package dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
        build-essential \
        autoconf \
        automake \
        libtool \
        pkg-config \
        ca-certificates \
        wget \
        git \
        curl \
        libjpeg-dev \
        libpng-dev \
        language-pack-en \
        locales \
        locales-all \
        python3 \
        python3-dev \
        python3-pip \
        python3-setuptools \
        libprotobuf-dev \
        protobuf-compiler \
        zlib1g-dev \
        swig \
        vim \
        gdb \
        valgrind \
        libsm6 \
        libxext6 \
        libxrender-dev \
        sudo
RUN apt-get clean

RUN cd /usr/local/bin && \
    ln -s /usr/bin/python3 python && \
    ln -s /usr/bin/pip3 pip && \
    pip install --upgrade pip setuptools wheel

# System locale
# Important for UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Install CMake
RUN cd /tmp && \
    wget https://github.com/Kitware/CMake/releases/download/v3.16.8/cmake-3.16.8-Linux-x86_64.sh && \
    chmod +x cmake-3.16.8-Linux-x86_64.sh && \
    ./cmake-3.16.8-Linux-x86_64.sh --prefix=/usr/local --exclude-subdir --skip-license && \
    rm ./cmake-3.16.8-Linux-x86_64.sh

RUN pip install torch==1.8.1 torchvision==0.9.1

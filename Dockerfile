FROM python:3.9.21-slim-bookworm
RUN apt-get clean && \
    apt-get update -yqq && \
    apt-get install -y --no-install-recommends --fix-missing \
        ca-certificates curl wget \
        openssl git dbus-x11 \
        ffmpeg \
        tar \
        lsb-release \
        procps \
        manpages-dev \
        unzip \
        zip \
        xauth \
        swig \
        python3-numpy python3-distutils \
        python3-setuptools python3-pyqt5 python3-opencv \
        libopencv-dev \
        && rm -rf /var/lib/apt/lists/* \
        && apt-get clean

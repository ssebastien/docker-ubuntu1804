FROM ubuntu:bionic

LABEL maintainer="sebastien"
LABEL org.opencontainers.image.source="https://github.com/ssebastien/docker-ubuntu1804"

# Install dependencies.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      build-essential \
      openssh-server \
      python3-dev \
      python3-pip \
      python3-setuptools \
      python3-wheel \
      systemd && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

WORKDIR /

VOLUME ["/sys/fs/cgroup"]

CMD ["/lib/systemd/systemd"]

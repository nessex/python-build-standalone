{% include 'base.Dockerfile' %}
RUN apt-get install -y \
    ca-certificates \
    curl \
    libc6-dev \
    python2.7 \
    python \
    tar \

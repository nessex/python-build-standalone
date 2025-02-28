{% include 'base.Dockerfile' %}
RUN ulimit -n 10000 && apt-get install -y \
      autoconf \
      automake \
      bison \
      build-essential \
      gawk \
      gcc \
      libtool \
      make \
      tar \
      texinfo \
      xz-utils \
      unzip

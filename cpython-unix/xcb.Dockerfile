{% include 'build.Dockerfile' %}
RUN ulimit -n 10000 && apt-get install -y \
    python3=3.11.4-5

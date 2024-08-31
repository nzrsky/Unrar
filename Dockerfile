FROM debian:stable-slim

LABEL maintainer="Alex Nazarov <nazarov@ptr.vc>"
LABEL description="Docker Container for Unrar unarchiver"

WORKDIR /build

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git=1:2.39.2-1.1 \
    make=4.3-4.1 \
    clang=1:14.0-55.7~deb12u1 \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Clone and build unrar
RUN git clone --depth 1 https://github.com/pmachapman/unrar /build && \
    cd /build && \
    make unrar && \
    make install && \
    cd / && \
    apt-get purge -y --auto-remove \
    git \
    make \
    clang && \
    rm -rf /build /var/lib/apt/lists/*

CMD ["/usr/bin/unrar"]

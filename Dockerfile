FROM debian:stable-slim

LABEL maintainer="Alex Nazarov <nazarov@ptr.vc>"
LABEL description="Docker Container for Unrar unarchiver"
LABEL org.opencontainers.image.description "Docker Container for Unrar unarchiver"

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    make \
    clang \
    ca-certificates && \
    # Clone and build unrar
    git clone https://github.com/pmachapman/unrar /app && \
    cd /app && \
    make unrar && \
    make install && \
    # Clean up
    cd / && \
    rm -rf /app && \
    apt-get purge -y --auto-remove \
    git \
    make \
    clang \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/unrar"]
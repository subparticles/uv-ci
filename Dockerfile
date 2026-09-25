FROM astral/uv:python3.14-trixie-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    build-essential \
    libexpat1-dev \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://dl.dagger.io/dagger/install.sh | DAGGER_VERSION=0.20.0 BIN_DIR=/usr/local/bin sudo -E sh

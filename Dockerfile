FROM astral/uv:python3.14-trixie-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    build-essential \
    libexpat1-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*
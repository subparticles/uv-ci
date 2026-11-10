FROM ghcr.io/astral-sh/uv:0.11.6-trixie-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    build-essential \
    libexpat1-dev \
    curl \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

ENV UV_PYTHON_INSTALL_DIR=/opt/python \
    UV_PYTHON=3.14t

RUN uv python install 3.14t \
    && ln -s "$(uv python find 3.14t)" /usr/local/bin/python \
    && ln -s /usr/local/bin/python /usr/local/bin/python3

RUN python -c "import sys, sysconfig; print(sys.version); assert sys.version_info[:2] == (3, 14); assert sysconfig.get_config_var('Py_GIL_DISABLED') == 1; assert not sys._is_gil_enabled()" \
    && uv --version

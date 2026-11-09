# uv-ci

CI image with Python 3.14 free-threaded, uv 0.11.6, and Dagger 0.20.0.
Python tracks the latest 3.14t patch available to this uv release.

Build locally:

```sh
docker build -t uv-ci:python-3.14t-uv-0.11.6-dagger-0.20.0 .
```

The build verifies that Python is free-threaded and starts with the GIL disabled.
Both `python` and `python3` use this interpreter; `UV_PYTHON=3.14t` also
selects it for uv commands.

Suggested release tag: `python-3.14t-uv-0.11.6-dagger-0.20.0`.
A Git tag must point to the commit containing this Dockerfile. Publishing an
image from that tag requires a configured registry build or CI workflow.

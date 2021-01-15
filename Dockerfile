# Build sqleditor from Dockerfile.cpu or Dockerfile.gpu.
# 1. ln -s Dockerfile.cpu Dockerfile
# 2. docker build -f <path/to/directory>
# 3. docker tag <sha> sqleditor:1.0
FROM sqleditor:1.0
RUN pip install --upgrade jupyter_http_over_ws>=0.0.7 && \
  jupyter serverextension enable --py jupyter_http_over_ws
ENTRYPOINT /bin/bash

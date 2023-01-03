# Dockerfile with notpinned dependencies

# Not pinned container image
FROM ubuntu:18.04

# Environment
ENV DEBIAN_FRONTEND noninteractive
SHELL ["/bin/bash", "-c"]   # Use Bash as shell

# Not pinned download then run package
# Install all basic requirements
RUN \
    apt-get update && \
    apt-get install python3.8 && \
    python --version

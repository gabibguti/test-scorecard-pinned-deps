# Dockerfile with notpinned dependencies

# Not pinned container image
FROM ubuntu:18.04

# Environment
ENV DEBIAN_FRONTEND noninteractive
SHELL ["/bin/bash", "-c"]   # Use Bash as shell

# Not pinned download then run package
# Install all basic requirements
RUN \
    # Python
    wget -nv -nc -O Miniconda3.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3.sh -b -p /opt/python

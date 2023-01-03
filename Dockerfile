# Dockerfile with notpinned dependencies

# Not pinned container image
FROM ubuntu:18.04

# Environment
ENV DEBIAN_FRONTEND noninteractive
SHELL ["/bin/bash", "-c"]   # Use Bash as shell

# Not pinned download then run package
# # Install and run anaconda miniconda3 with wget
# RUN \
#     # Python
#     wget -nv -nc -O Miniconda3.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
#     bash Miniconda3.sh -b -p /opt/python

# Not pinned pip command
# Install and run pip3
RUN \
    apt-get update && \
    apt-get install python3-pip && \
    pip3 --version

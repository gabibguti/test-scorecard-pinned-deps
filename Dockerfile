# Dockerfile with notpinned dependencies

# # Not pinned container image
# FROM ubuntu:18.04

# Pinned container image
FROM ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9

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
    pip3 install pyyaml

# Install go
RUN \
    apt-get update && \
    apt-get install golang-go && \
    # Not pinned go install
    go install jsonpatch@v4.12.0 && \
    # Pinned go install
    go install jsonpatch@50fdc0b4c9ab36933e6a0c9288fef3ac5df2b907
    # Double not pinned go install
    go get github.com/json-iterator/go@v1.1.12 github.com/evanphx/json-patch@v0.5.2

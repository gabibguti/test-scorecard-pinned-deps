#!/bin/bash
# Not pinned shell script

# # Not pinned pip command
# apt-get update
# apt-get install python3.8
# python -m pip install cibuildwheel

# Not pinned download then run package
# Install and run anaconda miniconda3 with wget
apt-get update
apt-get install wget
wget -nv -nc -O Miniconda3.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
bash Miniconda3.sh -b -p /opt/python

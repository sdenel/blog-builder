#!/bin/bash
set -e

#
# Install Pandoc
#
apt update
apt install -y wget
wget https://github.com/jgm/pandoc/releases/download/2.7.2/pandoc-2.7.2-1-amd64.deb
dpkg -i pandoc-2.7.2-1-amd64.deb

#
# Python tools: Jinja2 + ruamel.yaml
#
apt install -y python3-pip
pip3 install jinja2 ruamel.yaml

#
# Cleaning the cache to limit the size of the image
#
apt clean

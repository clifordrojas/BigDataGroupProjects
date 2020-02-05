#!/bin/bash
cd /opt

#download
sudo wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz

sudo chmod 755 /opt/

# unzip
tar -xf Python-3.6.9.tgz
rm Python-3.6.9.tgz

sudo chmod 755 /opt/
sudo ln -s /opt/python-3.6.9/bin/ python


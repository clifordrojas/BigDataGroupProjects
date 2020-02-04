#!/bin/bash
cd /opt

#download
wget https://www.python.org/ftp/python/3.6.9/Python-3.6.9.tgz

#unzip
tar -xf Python-3.6.9.tgz
rm Python-3.6.9.tgz

sudo chmod 777 /opt/

echo "
export PYTHON_HOME=/opt/Python-3.6.9
export PATH=$PATH:/opt/Python-3.6.9/bin
" >> .bash_profile

source ~/.bash_profile

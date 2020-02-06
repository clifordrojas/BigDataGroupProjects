#!/bin/bash
cd ~
echo "Y
" > Yes.txt

sudo apt install python-pip < Yes.txt
sudo pip install apache-airflow < Yes.txt

export PATH=$PATH:/home/`/usr/bin/whoami`/.local/bin
airflow initdb

rm Yes.txt

#!/bin/bash
pip3 install apache-airflow

sudo chmod 777 /opt/

nano .bash_profile

echo " export AIRFLOW_HOME=/home/alicja/airflow" >> .bash_profile

source ~/.bash_profile
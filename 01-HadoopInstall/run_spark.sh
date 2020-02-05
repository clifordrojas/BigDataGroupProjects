#!/bin/bash
wget https://www.apache.org/dyn/closer.lua/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz

#unzip
tar xvf spark-1.3.1-bin-hadoop2.6.tgz 
rm spark-1.3.1-bin-hadoop2.6.tgz

sudo chmod 777 /opt

nano .bash_profile

echo "export SPARK_HOME=/opt/spark-2.4.4-bin-hadoop2.7" >> .bash_profile
echo "export PATH=$PATH:$SPARK_HOME/bin" >> .bash_profile

source ~/.bash_profile
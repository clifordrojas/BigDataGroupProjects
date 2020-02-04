cd /opt

# Download spark
wget http://apache.mirrors.tds.net/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz 

# unzip spark
tar -xf spark-2.4.4-bin-hadoop2.7.tgz

sudo chmod 777 /opt/

cd ~
echo "export SPARK_HOME=/opt/spark-2.4.4-bin-hadoop2.7" >> ~/.bash_profile
echo "export PATH=$PATH:$SPARK_HOME/bin >> ~/.bash_profile

source ~/.bash_profile


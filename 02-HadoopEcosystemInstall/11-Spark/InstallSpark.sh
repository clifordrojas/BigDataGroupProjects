cd /opt

# Download spark
sudo wget http://apache.mirrors.tds.net/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz 

# unzip spark
sudo tar -xf spark-2.4.4-bin-hadoop2.7.tgz

sudo chmod 755 /opt/

cd ~
echo "export SPARK_HOME=/opt/spark-2.4.4-bin-hadoop2.7" >> ~/.bash_profile
echo "export PATH=$PATH:$SPARK_HOME/bin >> ~/.bash_profile

sudo ln -s /opt/spark-2.4.4-bin-hadoop2.7 /opt/spark


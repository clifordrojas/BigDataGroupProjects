#!/bin/bash
# get user name for filling paths later
USER_ID=`whoami`
CWD=`pwd`

if [ -z "$USER_ID" ]
then
    USER_ID='hadoop'
fi
export USER_ID

LF=~/hadoop_ecosystem_install.log
sudo echo

echo ... Installing Java ...
echo "... Installing Java ..." 2&> $LF
01-Java/installJava.sh 2&>> $LF 
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo

echo ... Installing Python ...
echo "... Installing Python ..." 2&>> $LF
02-Python/InstallPy.sh 2&>> $LF
export PYTHON_HOME=/opt/Python-3.6.9
export PATH=$PATH:/opt/Python-3.6.9/bin
echo

echo ... Installing Scala ...
echo "... Installing Scala ..." 2&>> $LF
03-Scala/install_scala.sh 2&>> $LF
export SCALA_HOME=/usr/share/scala/bin
export PATH=$SCALA_HOME/bin:$PATH
echo

echo ... Installing Sbt ...
echo "... Installing Sbt ..." 2&>> $LF
04-Sbt/install_sbt.sh 2&>> $LF
echo

echo ... Installing OpenSSH ...
echo "... Installing OpenSSH ..." 2&>> $LF
05-OpenSSH/openssh.sh 2&>> $LF
echo

echo ... Installing Github ...
echo "... Installing Github ..." 2&>> $LF
06-GitHub/git_install.sh 2&>> $LF
echo

echo ... Installing Hadoop ...
echo "... Installing Hadoop ..." 2&>> $LF
08-Hadoop/hadoop_install.sh 2&>> $LF
export HADOOP_HOME=/opt/hadoop
export PATH=$HADOOP_HOME/bin:$PATH
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
echo

echo ... Installing Kafka ...
echo "... Installing Kafka ..." 2&>> $LF
09-Kafka/installKafka.sh 2&>> $LF
export KAFKA_HOME=/opt/kafka
cd /opt
sudo chown ${USER_ID} * -R
cd $CWD
echo

echo ... Installing Airflow ...
echo "... Installing Airflow ..." 2&>> $LF
10-Airflow/install_airflow.sh 2&>> $LF
export AIRFLOW_HOME=/home/$USER_ID/airflow
export PATH=/home/$USER_ID/.local/bin:$PATH
echo

echo ... Installing Spark ...
echo "... Installing Spark ..." 2&>> $LF
${CWD}/11-Spark/InstallSpark.sh 2&>> $LF
echo

export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin 


cd ~
echo "
export PYTHON_HOME=/opt/Python-3.6.9
export JAVA_HOME=$JAVA_HOME
export SPARK_HOME=/opt/spark

export HADOOP_HOME=/opt/hadoop
export HADOOP_CONF_DIR=\$HADOOP_HOME/etc/hadoop
export HADOOP_INSTALL=\$HADOOP_HOME
export HADOOP_MAPRED_HOME=\$HADOOP_HOME
export HADOOP_COMMON_HOME=\$HADOOP_HOME
export HADOOP_HDFS_HOME=\$HADOOP_HOME
export HADOOP_OPTS="-Djava.library.path=\$HADOOP_HOME/ect/conf"
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/nativE
export YARN_HOME=\$HADOOP_HOME

export KAFKA_HOME=/opt/kafka
export SCALA_HOME=/usr/share/scala/bin

export PATH=/home/$USER_ID/.local/bin:$SCALA_HOME/bin:$KAFKA_HOME/bin:$JAVA_HOME/bin:$PYTHON_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$SPARK_HOME/bin:\$PATH
" > ~/.bash_profile

echo "
source ~/.bash_profile
" >> ~.bashrc

echo All Done !!!
echo
echo Source .bash_profile and your are ready to go
echo
echo

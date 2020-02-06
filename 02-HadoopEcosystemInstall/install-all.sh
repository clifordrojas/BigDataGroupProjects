# begin
LF=~/hadoop_ecosystem_install.log
sudo echo

echo ... Installing Java ...
01-Java/installJava.sh 2&> $LF 
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo

echo ... Installing Python ...
02-Python/InstallPy.sh 2&>> $LF
export PYTHON_HOME=/opt/Python-3.6.9
export PATH=$PATH:/opt/Python-3.6.9/bin
echo

echo ... Installing Scala ...
03-Scala/install_scala.sh 2&>> $LF
export SCALA_HOME=/usr/share/scala/bin
export PATH=$SCALA_HOME/bin:$PATH
echo

echo ... Installing Sbt ...
echo NOT IMPLEMENTED YET
04-Sbt/install_sbt.sh
echo

echo ... Installing OpenSSH ...
05-OpenSSH/openssh.sh 2&>> $LF
echo

echo ... Installing Github ...
06-GitHub/git_install.sh 2&>> $LF
echo

echo ... Installing Hadoop ...
08-Hadoop/hadoop_install.sh 2&>> $LF
export HADOOP_HOME=/opt/hadoop
export PATH=$HADOOP_HOME/bin:$PATH
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
echo

echo ... Installing Kafka ...
09-Kafka/installKafka.sh
export KAFKA_HOME=/opt/kafka
cd /opt
sudo chown hadoop * -R
cd ~
echo

echo ... Installing Airflow ...
10-Airflow/install_airflow.sh
export AIRFLOW_HOME=/home/hadoop/airflow
echo

echo ... Installing Spark ...
echo NOT IMPLEMENTED YET
#11-Spark/InstallSpark.sh
echo

#echo ... Setting up Pyspark ...
#echo NOT IMPLEMENTED YET
#!!!12-PySpark/run.sh

cd ~
echo "
export PYTHON_HOME=/opt/Python-3.6.9
export JAVA_HOME=$JAVA_HOME

export HADOOP_HOME=/opt/hadoop
export PATH=\$HADOOP_HOME/bin:\$HADOOP_HOME/sbin:$PATH
export HADOOP_CONF_DIR=\$HADOOP_HOME/etc/hadoop
export HADOOP_INSTALL=\$HADOOP_HOME
export HADOOP_MAPRED_HOME=\$HADOOP_HOME
export HADOOP_COMMON_HOME=\$HADOOP_HOME
export HADOOP_HDFS_HOME=\$HADOOP_HOME
export HADOOP_YARN_HOME=\$HADOOP_HOME
export HADOOP_OPTS="-Djava.library.path=\$HADOOP_HOME/ect/conf"

export KAFKA_HOME=/opt/kafka
export SCALA_HOME=/usr/share/scala/bin

export PATH=$SCALA_HOME/bin:$KAFKA_HOME/bin:$JAVA_HOME/bin:$PYTHON_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
" > ~/.bash_profile

echo All Done !!!
echo
echo Source .bash_profile and your are ready to go
echo
echo

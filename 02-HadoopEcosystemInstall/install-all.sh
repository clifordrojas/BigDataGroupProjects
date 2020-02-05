# begin
LF=~/hadoop_ecosystem_install.log
sudo echo

echo ... Installing Java ...
01-Java/installJava.sh 2&> $LF 
export JAVA_HOME=/opt/jdk1.8.0_221
export PATH=$JAVA_HOME/bin:$PATH
echo

echo ... Installing Python ...
02-Python/InstallPy.sh 2&> $LF
export PYTHON_HOME=/opt/Python-3.6.9
export PATH=$PATH:/opt/Python-3.6.9/bin
echo

echo ... Installing Scala ...
#!!!03-Scala/run.sh
echo

echo ... Installing Sbt ...
#!!!04-Sbt/run.sh
echo

echo ... Installing OpenSSH ...
05-OpenSSH/openssh.sh 2&> $LF
echo

echo ... Installing Github ...
06-GitHub/git_install.sh 2&> $LF
echo

echo ... Installing Hadoop ...
08-Hadoop/hadoop_install.sh 2&> $LF
export HADOOP_HOME=/opt/hadoop
export PATH=$HADOOP_HOME/bin:$PATH
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
echo

echo ... Installing Kafka ...
#09-Kafka/installKafka.sh
export KAFKA_HOME=/opt/kafka_2.12-2.3.1
cd opt
sudo chown hadoop * -R
cd ~
echo

echo ... Installing Airflow ...
#!!!10-Airflow/run.sh
echo

echo ... Installing Spark ...
#11-Spark/InstallSpark.sh
echo

echo ... Setting up Pyspark ...
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

export KAFKA_HOME=/opt/kafka_2.12-2.3.1


export PATH=$KAFKA_HOME/bin:$JAVA_HOME/bin:$PYTHON_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
" > ~/.bash_profile


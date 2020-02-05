# begin
01-Java/installJava.sh
export JAVA_HOME=/opt/jdk1.8.0_221
export PATH=$JAVA_HOME/bin

#02-Python/installPY.sh
#!!!03-Scala/run.sh
#!!!04-Sbt/run.sh
#05-OpenSSH/openssh.sh
#06-Git/git_install.sh
#!!!07-Netcat/run.sh
#08-Hadoop/hadoop_install.sh
#09-Kafka/installKafka.sh
#!!!10-Airflow/run.sh
#11-Spark/InstallSpark.sh
#!!!12-PySpark/run.sh

cd ~
echo "
export JAVA_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH
" > ~/.bash_profile


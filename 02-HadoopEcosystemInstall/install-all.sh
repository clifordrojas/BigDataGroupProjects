# begin
echo ... Installing Java ...
01-Java/installJava.sh

export JAVA_HOME=/opt/jdk1.8.0_221
export PATH=$JAVA_HOME/bin:$PATH

echo ... Installing Python ...
02-Python/InstallPy.sh
export PYTHON_HOME=/opt/Python-3.6.9
export PATH=$PATH:/opt/Python-3.6.9/bin

echo ... Installing Scala ...
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
export PYTHON_HOME=/opt/Python-3.6.9

export JAVA_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PYTHON_HOME/bin:$PATH
" > ~/.bash_profile


# begin
LF=~/hadoop_ecosystem_install.log

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
08-Hadoop/hadoop_install.sh
echo

echo ... Installing Kafka ...
#09-Kafka/installKafka.sh
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
export PATH=$JAVA_HOME/bin:$PYTHON_HOME/bin:$PATH
" > ~/.bash_profile


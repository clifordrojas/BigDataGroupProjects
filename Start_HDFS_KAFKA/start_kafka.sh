#!/bin/bash
source ~/.bash_profile

cd /opt/kafka/config

echo "
listeners=PLAINTEXT://:9091
cp server.properties server.properties.1
cat $KAFKA_HOME/logs/server.properties | sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-1/"
">> server.properties.1

echo "
listeners=PLAINTEXT://:9092
cp server.properties server.properties.2
cat $KAFKA_HOME/logs/server.properties | sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-2/"
">> server.properties.2

nohup zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties -daemon &

nohup kafka-server-start.sh $KAFKA_HOME/config/server.properties.1 -daemon &
nohup kafka-server-start.sh $KAFKA_HOME/config/server.properties.2 -daemon &

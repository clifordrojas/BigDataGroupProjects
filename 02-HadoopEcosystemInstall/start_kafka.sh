#!/bin/bash
source ~/.bash_profile

cd /opt/kafka/config

cat /opt/kafka/config/server.properties | sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-1/"> server.properties.1
echo "listeners=PLAINTEXT://:9091 " >> server.properties.1

cat /opt/kafka/config/server.properties | sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-2/"> server.properties.2
echo "listeners=PLAINTEXT://:9092" >> server.properties.2

zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties & 
wait 5

kafka-server-start.sh $KAFKA_HOME/config/server.properties.1 &
wait 2
kafka-server-start.sh $KAFKA_HOME/config/server.properties.2 &
wait 2

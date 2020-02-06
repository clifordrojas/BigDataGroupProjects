#!/bin/bash
source ~/.bash_profile

cd /opt/kafka/config

cat /opt/kafka/config/server.properties | sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-1/"> server.properties.1
echo "
listeners=PLAINTEXT://:19091
" >> server.properties.1

cat /opt/kafka/config/server.properties | sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-2/"> server.properties.2
echo "
listeners=PLAINTEXT://:19092
" >> server.properties.2

zookeeper-server-start.sh -daemon $KAFKA_HOME/config/zookeeper.properties 
sleep 1

kafka-server-start.sh -daemon $KAFKA_HOME/config/server.properties.1
sleep 1
kafka-server-start.sh -daemon $KAFKA_HOME/config/server.properties.2
sleep 1

# create a sample topic
kafka-topics.sh --create --topic example --zookeeper localhost:2181 --partitions 1 --replication-factor 1

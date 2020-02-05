#!/bin/bash
source ~/.bash_profile

cd

cd /opt/kafka/config
echo "
listeners=PLAINTEXT://:9091
sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-1/
" >> server.properties.1

echo "
listeners=PLAINTEXT://:9092
sed -e "s/log.dirs=\/tmp\/kafka-logs/log.dirs=\/tmp\/kafka-logs-2/
" >> server.properties.2

nohup zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &

nohup kafka-server-start.sh $KAFKA_HOME/config/server.properties.1 &
nohup kafka-server-start.sh $KAFKA_HOME/config/server.properties.2 &



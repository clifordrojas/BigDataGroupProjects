kafka-topics.sh --create --topic example --partitions 1 --replication-factor 1 --zookeeper localhost:2181

kafka-console-consumer.sh --bootstrap-server localhost:9091 --topic example 

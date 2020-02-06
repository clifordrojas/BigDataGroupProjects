echo "Sing with me:
The   ice    is     melting
The   ice    is     melting
On the earth
On the earth
Maybe I'll go swimming
And I am going skiing
Until the end
Until the end
" > msg.txt

kafka-console-producer.sh --topic example --broker-list localhost:19091 localhost:19092

kafka-console-consumer.sh --bootstrap-server localhost:19091 --topic example --from-beginning

rm msg.txt

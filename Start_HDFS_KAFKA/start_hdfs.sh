#!/bin/bash

start-dfs.sh
start-yarn.sh

hdfs dfs -mkdir /data
hdfs dfs -mkdir /tmp
hdfs dfs -mkdir /user


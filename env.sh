#!/bin/bash
export NODE_PATH=$(pwd)/$1
export HADOOP_LOG_DIR=$NODE_PATH/logs
export HADOOP_PID_DIR=$NODE_PATH
export HADOOP_HEAPSIZE=512
export HADOOP_PREFIX="/usr/local/hadoop/hadoop-2.9.1"
export HADOOP_YARN_HOME="/usr/local/hadoop/hadoop-2.9.1"
export HADOOP_COMMON_HOME="/usr/local/hadoop/hadoop-2.9.1"
export HADOOP_HDFS_HOME="/usr/local/hadoop/hadoop-2.9.1"
export YARN_LOG_DIR=$NODE_PATH/logs
export YARN_PID_DIR=$NODE_PATH

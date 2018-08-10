#!/bin/bash
export NODE_PATH=$(pwd)/$1
export HADOOP_LOG_DIR=$NODE_PATH/logs
export HADOOP_PID_DIR=$NODE_PATH
export HADOOP_HEAPSIZE=512

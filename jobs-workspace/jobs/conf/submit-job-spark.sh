#!/usr/bin/env bash

export YARN_CONF_DIR=/vagrant/hadoop-cluster/client/conf
spark-submit --class com.mapreduce.examples.spark.SalesCount --master yarn --deploy-mode cluster /vagrant/hadoop-cluster/jobs-workspace/jobs/target/jobs-1.0-SNAPSHOT.jar
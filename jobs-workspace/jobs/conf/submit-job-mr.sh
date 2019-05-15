#!/usr/bin/env bash

hadoop --config /vagrant/hadoop-cluster/client/conf jar /vagrant/hadoop-cluster/jobs-workspace/jobs/target/jobs-1.0-SNAPSHOT.jar com.mapreduce.examples.mapreduce.WordCount input output
hadoop --config /vagrant/hadoop-cluster/client/conf jar /vagrant/hadoop-cluster/jobs-workspace/jobs/target/jobs-1.0-SNAPSHOT.jar com.mapreduce.examples.mapreduce.SalesCount venda output-venda
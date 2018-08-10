#!/bin/bash
hdfs  --config $(pwd)/$1/conf namenode -format

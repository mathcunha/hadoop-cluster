#!/bin/bash
mkdir -p /home/vagrant/hive/data
sudo docker run --name hive-metastore -p 3306:3306 -v /home/vagrant/hive/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mysql -d mysql:5
#mysql -u root -pmysql
#CREATE DATABASE metastore;
#USE metastore;
#SOURCE /var/lib/mysql/hive-schema-2.3.0.mysql.sql
#CREATE USER 'hive' IDENTIFIED BY 'hive';
#GRANT all on *.* to 'hive';
#flush privileges;

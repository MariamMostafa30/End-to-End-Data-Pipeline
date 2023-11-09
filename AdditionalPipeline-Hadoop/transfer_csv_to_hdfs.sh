#! /usr/bin/bash

# use hadoop user
# This command initializes the storage directories of the Namenode and deletes any existing data,
# resetting the Namenode to its initial state.
hadoop namenode -format set -x
echo "namenode initialized " set -x
# this command starts all Hadoop daemons, the namenode, datanodes, the jobtracker and tasktrackers
start-all.sh set -x
echo "all hadoop daemons start"
# create  SprintsProject directory in order to store csv files in it
hadoop fs -mkdir /user
hadoop fs -mkdir /user/hadoop
hadoop fs -mkdir /user/hadoop/_SprintsProject
echo "Directories had been created successfully"
# put all csv file to new hdfs directory SprintsProject
for file in "$@"
do
     if [ -f "$file" ]; then
           hdfs namenode
           echo "file name is $file"
           hadoop fs -put "$file" _SprintsProject
           echo "CSV File had been loaded successfully to hdfs directory..."
     fi
done


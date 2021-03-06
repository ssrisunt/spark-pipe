#!/bin/bash

HDFS_CONF_DIR=#<hdfs path where concatenate.sh should be located>
MAIN_JAR_LIB="pipe-1.0.jar"
SPARK_SCRIPT_OPTIONS="--master yarn-cluster --driver-memory 5G --executor-memory 3G --num-executors 4 --executor-cores 1"
FILES="--files $HDFS_CONF_DIR/concatenate.sh"
SPARK_MAJOR_VERSION=2 /usr/bin/spark-submit --class com.sparja.bowels.pipe.JobRunner $FILES $SPARK_SCRIPT_OPTIONS $MAIN_JAR_LIB

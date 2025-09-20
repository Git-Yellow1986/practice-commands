#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

if [ -d $SOURCE_DIR ]
then 
    echo "$SOURCE_DIR  Exists...."
else
    echo "$SOURCE_DIR does not Exit....."
    exit 1
fi
FILES=$(FIND $SOURCE_DIR -name "*.log" -mtime +14)
while IFS= read -r file
do
    echo "Deleting files : $file"
    #rm -rf $file

done <<< $FILES

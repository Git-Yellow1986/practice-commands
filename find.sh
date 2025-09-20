#!/bin/bash

SOURCE_DIR=/home/ec2-user/logs

if [ -d $SOURCE_DIR ]
then 
    echo "$SOURCE_DIR  Exists...."
else
    echo "$SOURCE_DIR does not Exit....."
    exit 1
fi
    FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)
        echo "Files: $FILES"

while IFS= read -r file
do
    echo "Deleting files : $file"
    #rm -rf $file
    ls -l $file

done <<< $FILES

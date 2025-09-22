#!/bin/bash

SOURCE_DIR="/var/log/shell-script"
FILE=$(find $SOURCE_DIR -name "*.log" -mtime -1)

if [ ! -d $SOURCE_DIR ]
then
    echo "The Source file does not exit...."
    exit 1
else
    echo "The file is Exist...."
fi

if [ ! -n $FILE ]
then 
    echo "The files are not exits"
    exit 1
else
    echo "The files are exist"
fi

while IFS= read -r file
do
    echo "deleting files $file"
    rm -rf $file

    if [ ! -z $FILE ]
    then
        echo "files are existed "
    else
        echo " files are not existed"
    fi
done <<<$FILE

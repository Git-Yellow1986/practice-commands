#!/bin/bash

SOURCE_DIR=${1}
DEST_DIR=${2}
DAYS=${3:-14}

TIMESTAMP=$(date "+%F %r")

N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

USAGE(){
    echo -e "$R USAGE:: $N backup.sh <Source> <Destination> <Days(optional)>"
}
    # Check Source and Destination are provided
if [ $# -lt 2 ] 
then 
       USAGE
       exit 1
fi

if [ ! -d $SOURCE_DIR ]
then 
    echo -e "$SOURCE_DIR $R DEOS NOT EXISTED $N"
    exit 1
else
    echo -e "$SOURCE_DIR is $G EXISTED $N"
    
fi

if [ ! -d $DEST_DIR ]
then
    echo -e "$DEST_DIR $R DOES NOT EXISTED $N"
    exit 1
else
    echo -e "$DEST_DIR is $G EXISTED $N"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)
    echo "Files: $FILE"
    
    if [ ! -z $FILES ] #true if FILES is empty, ! nakes it expression false
    then
        echo "Files are found"
        ZIP_FILE="$DEST_DIR/app-log-$TIMESTAMP.zip"
        find ${SOURCE_DIR} -name "*.log" -mtime +$DAYS | zip "$ZIP_FILE" -@
    fi







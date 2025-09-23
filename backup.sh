#!/bin/bash

SOURCE_DIR=${1}
DEST_DIR=${2}
DAYS=${3:-14}

N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

USAGE(){
    echo -e "$R USAGE:: $N backup.sh <Source> <Destination> <Days(optional)>"
}
    # Check Source and Destination are provided
    USAGE

if [ ! -d $SOURCE_DIR ]
then 
    echo -e "$SOURCE_DIR $R DEOS NOT EXISTED $N"
    exit 1
else
    echo -e "$SOURCE_DIR is $G EXISTED $N"
    
fi

if [ ! -d $DEST-DIR ]
then
    echo -e "$DEST_DIR $R DOES NOT EXISTED $N"
    exit 1
else
    echo -e "$DEST_DIR is $G EXISTED $N"
fi

FILE=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)
    echo "Files: $FILE"
    


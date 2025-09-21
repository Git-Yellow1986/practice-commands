#!/bin/bash

SOURCE_DIR=/home/ec2-user/expense-source

if [ -d $SOURCE_DIR ]
then 
    echo "The $SOURCE_DIR exists..."
else
    echo "The $SOURCE_DIR does not exit..."
    exit 1
fi

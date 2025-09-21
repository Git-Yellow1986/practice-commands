#!/bin/bash

SOURCE_DIR=/home/ec2-user/expense-source

if [ -d $SOURCE_DIR ]
then 
    echo "The source directory exists..."
else
    echo "The source directory does not exit..."
    exit 1
fi

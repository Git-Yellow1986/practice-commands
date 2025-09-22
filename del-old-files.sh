#!/bin/bash

SOURCE_DIR="/var/log/shell-script"

if [ ! -d $SOURCE_DIR ]
then
    echo "The Source file does not exit...."
else
    echo "The file is Exist...."
fi
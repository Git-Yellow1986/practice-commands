#!/bin/bash
LOG_FOLDER="/var/log/shell-script"
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
FILE_NAME="touch redictors"
LOG_FILE="$LOG_FOLDER/$FILE_NAME-$TIME_STAMP.log"
mkdir -p $LOG_FOLDER



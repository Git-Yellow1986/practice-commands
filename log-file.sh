#!/bin/bash
LOG_FOLDER="/var/log/shell-script"
TIME_STAMP=$(data %Y-%m-%d-%H-%M-%S)
FILE_NAME=$(touch redictor)
LOG_FILE="LOG_FOLDER/FILE_NAME-TIME_STAMP.log"
mkdir -pv $LOG_FOLDER



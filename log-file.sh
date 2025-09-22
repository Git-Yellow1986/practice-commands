#!/bin/bash
LOG_FOLDER="/var/log/shell-script/"
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
FILE_NAME="Matthews"
sudo touch $FILE_NAME
LOG_FILE="$LOG_FOLDER/$FILE_NAME-$TIME_STAMP.log"
mkdir -p $LOG_FOLDER

USERID=$(id -u)

N="\e[0m"
R="\e[30m"
G="\e[31m"
Y="\e[32m"

echo "Script started executing at: $(date)"


VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "$2 is ... $R FAILURE $N"
    exit 1
else 
    echo -e "$2 is... $G success $N"
fi
}


if [ $USERID -ne 0 ]
then 
    echo -e "$Y Please run this script with root privelages $N " 
    exit -1
fi


dnf install nginx -y &>>$LOG_FILE

if [ $1 -ne 0 ]
then 
    echo -e "$2 Nginx install... $R FAILURE $N"
    exit 1
else 
    echo -e "$2 Nginx insall.. $Y SUCCESSFULLY $N"
fi

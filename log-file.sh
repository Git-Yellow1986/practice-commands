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


# VALIDATE(){
# if [ $1 -ne 0 ]
# then 
#     echo -e "$2 is ... $R FAILURE $N"
#     exit 1
# else 
#     echo -e "$2 is... $G success $N"
# fi
# }


if [ $USERID -ne 0 ]
then 
    echo -e "$Y Please run this script with root privelages $N " 
    exit -1
fi

dnf list installed nginx

if [ $? -ne 0 ]
then 
    echo "Nginx not installed"
    dnf install nginx -y
        if [ $? -ne 0 ] 
        then 
            echo "Nginx isntallation is failure please check it"
            exit 1
        else
            echo "Nginx installation is success"
        fi
else
    echo "Nginx already installed nothing to do.."
fi


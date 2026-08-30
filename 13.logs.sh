#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
echo " please run this sudo access "
exit 1
fi 
mkdir -p $LOGS_FOLDER
VALIDATE(){
if [ $? -ne 0 ]; then

    echo " $2 ... FAILURE "
    exit
else 
    echo " $2 ... SUCCESS "
fi
}
dnf install nginx -y &>> $LOG_FILE
VALIDATE $? " installing nginx " 

dnf install mysql -y &>> $LOG_FILE
VALIDATE $? " installing mysql "
 
 dnf install nodejs -y &>> $LOG_FILE
VALIDATE $? " installing nodejs "

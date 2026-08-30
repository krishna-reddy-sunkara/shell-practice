#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
echo " please run this sudo access " | tee -a $LOGS_FILE
exit 1
fi 

VALIDATE(){
if [ $? -ne 0 ]; then

    echo " $2 ... FAILURE " | tee -a $LOGS_FILE
    exit
else 
    echo " $2 ... SUCCESS " | tee -a $LOGS_FILE
fi
}
dnf install nginx -y &>> $LOG_FILE
VALIDATE $? " installing nginx " 

dnf install mysql -y &>> $LOG_FILE
VALIDATE $? " installing mysql "
 
 dnf install nodejs -y &>> $LOG_FILE
VALIDATE $? " installing nodejs "

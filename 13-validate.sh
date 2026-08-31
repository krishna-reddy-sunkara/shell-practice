#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
  echo " please run this with sudo user "
  exit 1
 fi 
mkdir -p $LOGS_FILE
  VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2  ... FAILURE"
    exit 1
    else 
    echo "$2 ... SUCCESS"
    fi
  }

  dnf install nginx -y &>>LOGS_FILE
  VALIDATE $? "installing nginx"
   
  dnf install mysql -y &>>LOGS_FILE
  VALIDATE $? "installing mysql"

  dnf install nodejs -y &>>LOGS_FILE
  VALIDATE $? "installing nodejs"

  
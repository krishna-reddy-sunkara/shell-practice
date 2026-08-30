#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
echo " please run this sudo access "
exit 1
fi 
VALIDATE(){
if [ $? -ne 0 ]; then

    echo " $2 ... FAILURE "
    exit
else 
    echo " $2 ... SUCCESS "
fi
}
dnf install nginx -y
VALIDATE $? " installing nginx "

dnf install mysql -y
VALIDATE $? " installing mysql "
 
 dnf install nidejs -y 
VALIDATE $? " installing nodejs "


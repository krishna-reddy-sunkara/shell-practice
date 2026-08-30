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
dnf install nginjjx -y
VALIDATE $? " installing nginx " 

dnf install mysql -y
VALIDATE $? " installing mysql "
 
 dnf install nodejs -y 
VALIDATE $? " installing nodejs "


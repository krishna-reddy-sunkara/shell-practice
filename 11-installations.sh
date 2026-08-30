#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo " run this script with sudo access "
  
fi 

 echo " installing nginx "
 dnf install nginx -y



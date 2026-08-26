#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
echo " please run this script with root user access "
exit
fi 
echo " installing nginx "

dnf install nginx -y

if [ $? -ne 1]; then 
echo " installing nginx is... failure "
exit
else 
echo " installing nginx is success "
fi
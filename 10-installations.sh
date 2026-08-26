#!/bin/bash
USERID=$(id -u)
 if [ $USERID -eq 1 ]; then
  echo " install nginx  with sudo access "
  fi 

  echo " install nginx "

   dnf install nginx -y

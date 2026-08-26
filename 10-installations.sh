#!/bin/bash
USERID=$(id -u)
 if [ USERID -ne 0 ]; then
  echo " install nginx  with sudo access "
  fi 

  echo " install nginx "
  
   dnf install nginx -y

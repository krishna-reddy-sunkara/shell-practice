#!/bin/bash
USERID=$(id -u)

 if [ $USERID -ne 0 ]; then
 echo " install nginx  with sudo access "
 exit 2
  fi 


  echo " install nginx "

  dnf install nginx -y

if [ $? -ne 0 ]; then
  
   echo " nginx is ... FAILURE "
      exit

    else 
    echo " install nginx is success "
     fi

#!/bin/bash
NUMBER=20
if [ $NUMBER -ne 0 ]; then
echo " please run this script with root user access "
fi 
echo " installing nginx "

dfn install nginx -y
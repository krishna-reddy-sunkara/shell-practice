#!/bin/bash
NUMBER=$1

if [ $NUMBER -gt 20 ]; then
echo " print number : $NUMBER is greater then 20 "
elif [ $NUMBER = 20]; then
echo " given number : $NUMBER is = 20 "
else
echo " given number : $NUMBER is less then 20 "
fi
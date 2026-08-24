#!/bin/bash

echo " all args passed to script : $@ "
echo " number of variables passed to script :$# "
echo " script name : $0 "
echo " present directory :$PWD "
echo " who is running : $USER "
echo " home directory of current user : $HOME"
echo " pid of this script : $$"
sleep 30
echo " pid of recently excuted background of process : $!"

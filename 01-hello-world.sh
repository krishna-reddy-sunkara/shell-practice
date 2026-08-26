#!/bin/bash
 TIMESTAMP=$(date)
 echo " the script excuted : $TIMESTAMP "

 START_TIME=$(date +%s)
 echo " the script excuted : $START_TIME "
 END_TIME=$(date +%s)
 echo " the script excuted : $END_TIME "
  TOTAL_TIME=$((START_TIME + END_TIME))
  echo " script is excuted : $TOTAL_TIME "
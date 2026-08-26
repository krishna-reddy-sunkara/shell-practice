#!/bin/bash
 TIMESTAMP=$(date)
 echo " the script excuted : $TIMESTAMP "

 START_TIME=$(date +%s)
 echo " the script excuted : $START_TIME "
 END_TIME=$(date +%s)
 echo " the script excuted : $END_TIME "
  TOTAL_TIME=$((START-TIME+END_TIME))
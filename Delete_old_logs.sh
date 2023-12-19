#!/bin/bash

SOURCE_DIR="/tmp/Script-logs"   #variable created no space while creating varianles Careul
R="\e[31m"
G="\e[32m"  #added colours
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ];   #if condition to check if folider exist and negative it means folder does not exist
then
    echo -e " $SOURCE_DIR  Directory $R Not Exist "
fi
#variables color is blue heren
files_to_delete=$(find $SOURCE_DIR -type f -mtime +14 -name  "*.log") #to find files 14days ago on .log files 

while IFS= read -r line  #while loop for deleting all files existinf and IFS is used only when o/p from a cmd
do
echo -e  "deleting... $R $line $N"
rm -rf $line # -r -f means resursive forcly remove without any prompt

done <<< $files_to_delete  #input from above variable to loop
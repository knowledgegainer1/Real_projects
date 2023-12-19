#!/bin/bash

SOURCE_DIR="/tmp/Script-logs"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]; 
then
    echo -e " $SOURCE_DIR  Directory $R Not Exist "
fi
#variables color is blue heren
files_to_delete=$(find $SOURCE_DIR -type f -mtime +14 -name  "*.log")

while IFS= read -r line
do
echo -e  "deleting... $R $line $N"
rm -rf $line

done <<< $files_to_delete
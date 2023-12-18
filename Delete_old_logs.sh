#!bin/bash

SOURCE_DIR =/tmp/Script-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] ;
then
echo "$SOURCE_DIR  directory $R not exist"
else
echo "$G exist"
fi 


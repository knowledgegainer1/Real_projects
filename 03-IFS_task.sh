#!/bin/bash

file_loc="/etc/passwd"

R="\e[31m"
G="\e[32m" #added colours
Y="\e[33m"
N="\e[0m"

if [ ! -f $file_loc ]; then    # -f to check whether givrn file is a file or not
    echo -e "$file_loc doesn't Exist"
fi

while IFS="/" read -r f1 f2        #here fields are seperated by : and send into fragments f1 f2 each fragment each : value 
do
echo -e " $f1  this is user name "
echo -e " $f2  this is next full text "
done < $file_loc   #input from file
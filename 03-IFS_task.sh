#!/bin/bash

file_loc="/etc/passwd"

R="\e[31m"
G="\e[32m" #added colours
Y="\e[33m"
N="\e[0m"

if [ ! -f $file_loc ]; then
    echo -e "$file_loc doesn't Exist"
fi

while IFS=":" read -r f1 f2
do
echo -e " $f1  this is user name "
echo -e " $f2  this is next full text "
done < $file_loc
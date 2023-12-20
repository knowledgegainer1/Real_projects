#!/bin/bash

DevOps=$1
High=$1
message=$3
escape=$(printf '%s\n' "$message" | sed -e 's/[]\/$*.^[]/\\&/g');
clonemaker=$4
 Alert=$5

 final=$(sed -e "s/Team/$DevOps/g" -e "s/alertmessage/$High/g" -e "s/BODY/$message/g" temp.html )

 echo "$final" | mail -s "$(echo -e "$Alert\nContent-Type: text/html")" "$clonemaker"
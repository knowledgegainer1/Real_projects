#!/bin/bash

DevOps-Team=$1
High-disk-Usgae=$1
message=$3
clonemaker=$4
 Alert=$5

 final=$(sed -e 's/Team/$DevOps-Team/g' -e 's/alert message/$High-disk-Usgae/g' -e 's/BODY/$message/g' temp.html )

 echo "$final" | mail -s "$Alert" 
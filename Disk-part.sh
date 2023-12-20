#!/bin/bash

disk_usage=$(df -hT | grep -vE "tmp|File")
disk_treshold=1
message=""

while IFS= read line; do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $disk_treshold ]; then
        message+="high disk usage on $partition: $usage"
    fi 
done <<<$disk_usage

echo "message is :$message"

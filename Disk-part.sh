#!/bin/bash

disk_usage=$(df -hT | grep -vE "tmp|File")
disk_treshold=1
message=""

while IFS= read line; do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $disk_treshold ]; then
        message+="high disk usage on $partition: $usage \n"
    fi
done <<<$disk_usage

#lmyn yvbb gmxz gcxz
#[smtp.gmail.com]:587 gottamsadashiva:lmynyvbb gmxz gcxz
#echo "This is a test mail & Date $(date)" | mail -s "message" info@joindevops.com

echo -e "message is :$message"
#echo "$message on $(date)" | mail -s "High Disk Usage" clonemaker74@gmail.com
sh mail.sh "DevOps Team" "High disk Usgae" "$message" "clonemaker74@gmail.com" "Alert-High Usage"

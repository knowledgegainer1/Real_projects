#!/bin/bash

ami=ami-03265a0778a880afb
sg=sg-0a719cdd2c1f8d094
instances=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "shipping" "payment" "dispatch" "web")

for i in "${instances[@]}"
 do
 echo "instance is :$i"
    if [ $i == "mongodb" ] || [ $i == "mysql" ] ||
        [ $i == "shipping" ]
    then
        instance_type="t3.small"
    else
        instance_type="t2.micro"
    fi
    aws ec2 run-instances --image-id ami-03265a0778a880afb --instance-type $instance_type --security-group-ids sg-0a719cdd2c1f8d094  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]"  --query 'Instances[0].PrivateIpAddress' --output text
done

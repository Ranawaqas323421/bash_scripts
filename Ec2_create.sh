#!/bin/bash

INSTANCE_TYPE="t2.micro"
AMI_ID="ami-091138d0f0d41ff90"
KEY_NAME="rana_waqas"
SECURITY_GROUP_ID="sg-0034248ef16241995"
INSTANCE_NAME="rana_waqas"

aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_ID \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
  >/dev/null 2>&1

echo "✅ EC2 instance '$INSTANCE_NAME' launched successfully."

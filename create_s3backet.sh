#!/bin/bash

# Define variables
BUCKET_NAME="my-s3-ec2-read-bucket-$(date +%s)"
REGION="us-east-1"

# Create S3 bucket
aws s3api create-bucket \
  --bucket "$BUCKET_NAME" \
  --region "$REGION"

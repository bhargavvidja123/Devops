#!/bin/bash

###############################
# Author: Bhargav Vidja
# Date: 27 Aug
#
# Version: v1
#
# This Script will report the AWS resource usage
###############################

set -x
# List S3 buckets
echo "Print S3 buckests list"
aws s3 ls

# List EC2 Instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List AWS Lambda
echo "Print list of lambda"
aws lambda list-functions

# List IAM users
echo "Print list of IAM users"
aws iam list-users

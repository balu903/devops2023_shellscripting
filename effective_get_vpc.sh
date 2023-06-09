#!/bin/bash
REGIONS=$@
echo ${REGIONS}
FORMAT='json'
VERSION='1.0.0'
for REGION in ${REGIONS};do
    echo " Get the VPC ID for the Region ${REGION}"
    aws ec2 describe-vpcs --region $REGION --output $FORMAT | jq ".Vpcs[].VpcId"
    echo '---------------------------------------------------------------------'
done
#!/bin/bash
. "$(dirname $0)/settings.sh"
echo "Starting EC2"
aws ec2 start-instances --instance-ids $INSTANCE_ID
echo "EC2 Status"
aws ec2 describe-instance-status --instance-ids $INSTANCE_ID

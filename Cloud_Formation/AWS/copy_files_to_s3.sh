#!/bin/bash
#
# Small script to copy the files to my S3 bucket.
# This will only work for me ofcourse.

BUCKET=#add your own bucket
REGION=#add your own region

echo "# CloudFormation"
./CloudFormation/validate_stack.sh
if [ $? -eq 0 ]
then
  aws s3 rm s3://$BUCKET/CloudFormation --region $REGION --recursive
  aws s3 cp CloudFormation s3://$BUCKET/CloudFormation --region $REGION --recursive --exclude "*.md" --exclude "*.sh"
else
  echo "CloudFormation files did not validate, not copying to S3!"
fi

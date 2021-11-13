#!/bin/bash -x

#aws s3 delete-bucket

BUCKET=$1

aws s3 rb s3://$BUCKET --force  
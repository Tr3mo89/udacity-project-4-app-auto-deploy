#!/bin/bash 

BACKEND_IP=$(aws ec2 describe-instances --query 'Reservations[*].Instances[*].PublicIpAddress' --filters Name=tag:project,Values='udapeople' --output text) # >> .circleci/ansible/inventory.txt
echo $BACKEND_IP
API_URL="http://${BACKEND_IP}:3030"
echo $API_URL
curl "${API_URL}/api/status"
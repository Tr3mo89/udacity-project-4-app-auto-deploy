#!/bin/bash -x

aws cloudformation deploy \
         --template-file cloudfront.yml \
         --stack-name InitialStack\
         --parameter-overrides WorkflowID=udapeople-femonds 
	 #--profile=udacity

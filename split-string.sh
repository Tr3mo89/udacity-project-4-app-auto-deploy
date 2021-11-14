#!/bin/sh

## option for sh / shell
foo="udapeople-c7f7615"
echo ${foo##*-}
OldWorkflowID=${foo##*-}
echo OldWorkflowID: "${OldWorkflowID}"

### Option for bash
#IN="udapeople-c7f7615"
#IFS='-' read -ra ADDR <<< "$IN"
#for i in "${ADDR[@]}"; do
#  OldWorkflowID=$i
#done
#echo $OldWorkflowID
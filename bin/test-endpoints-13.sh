#!/bin/bash
source ./bin/pre-run.sh

npm install -g newman --no-fund --no-audit

COLLECTION_ID="23570023-06a4c3c9-4d68-4fa0-a1a3-8e23bee08fc8"
POSTMAN_ACCESS_KEY="PMAT-01GRK2JBSYVWRP3A3E7HT6H6VF"

POSTMAN_COLLECTION_URL="https://api.postman.com/collections/$COLLECTION_ID?access_key=$POSTMAN_ACCESS_KEY"

timeout 60 bash ./bin/newman.sh $POSTMAN_COLLECTION_URL

check $?
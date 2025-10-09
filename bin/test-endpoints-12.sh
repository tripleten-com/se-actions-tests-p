#!/bin/bash

source ./bin/pre-run.sh

npm install -g newman --no-fund --no-audit --loglevel=error

COLLECTION_ID="23570023-9b9c196e-c509-43ca-9ef9-def9bfc1377d"
POSTMAN_ACCESS_KEY="PMAT-01HP1EQ3Z0WPQZGS6DMPY0ZB7X"

POSTMAN_COLLECTION_URL="https://api.postman.com/collections/$COLLECTION_ID?access_key=$POSTMAN_ACCESS_KEY"

timeout 60 bash ./bin/newman.sh $POSTMAN_COLLECTION_URL

check $?
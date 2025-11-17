#!/bin/bash
source ./bin/pre-run.sh

npm install -g newman --no-fund --no-audit --loglevel=error

POSTMAN_COLLECTION_URL="https://api.postman.com/collections/23570023-9b9c196e-c509-43ca-9ef9-def9bfc1377d?access_key=PMAT-01HP1EQ3Z0WPQZGS6DMPY0ZB7X"

timeout 60 bash ./bin/newman.sh $POSTMAN_COLLECTION_URL

check $?
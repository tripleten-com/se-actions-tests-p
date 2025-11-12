#!/bin/bash
source ./bin/pre-run.sh

npm install -g newman --no-fund --no-audit --loglevel=error

COLLECTION_ID="40482199-cc44329c-06b1-43e3-a7d2-d66e1c6bcd06"

POSTMAN_COLLECTION_URL="https://api.postman.com/collections/$COLLECTION_ID?access_key=PMAT-01HP1EQ3Z0WPQZGS6DMPY0ZB7X"

timeout 60 bash ./bin/newman.sh $POSTMAN_COLLECTION_URL

check $?

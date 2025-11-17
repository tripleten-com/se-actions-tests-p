#!/bin/bash
source ./bin/pre-run.sh

npm install -g newman --no-fund --no-audit --loglevel=error


POSTMAN_COLLECTION_URL="https://api.postman.com/collections/40482199-cc44329c-06b1-43e3-a7d2-d66e1c6bcd06?access_key=PMAT-01KA8PD5WSNB8NQMRSDW3GRXM0"

timeout 60 bash ./bin/newman.sh $POSTMAN_COLLECTION_URL

check $?

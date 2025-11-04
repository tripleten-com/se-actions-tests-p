#!/bin/bash
source ./bin/pre-run.sh

npm ci --no-fund --no-audit
check $?

node ./dist/index.js ../
check $?

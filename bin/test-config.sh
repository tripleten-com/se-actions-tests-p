#!/bin/bash

source ./bin/pre-run.sh

npm ci --no-fund --no-audit --loglevel=error
node ./dist/index.js ../
check $?

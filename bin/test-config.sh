#!/bin/bash
set -euo pipefail

source ./bin/pre-run.sh

npm ci --no-fund --no-audit --log-level=error --no-progress
node ./dist/index.js ../
check $?

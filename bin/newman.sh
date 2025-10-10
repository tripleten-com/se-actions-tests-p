#!/bin/bash
set -euo pipefail
newman run $1 --color on --verbose

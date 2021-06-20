#!/bin/sh

dir=frontend

set +e
git diff --staged --diff-filter=ACMR --name-only | grep  "^$dir/" 
exitCode="$?"
set -e

# 1 represents no files found
if [ $exitCode = 1 ]; then
        exit 0
fi

echo "frontend tests"
echo "yarn test --all --watchAll=false"
echo "yarn build"

# yarn test --all --watchAll=false
# yarn build

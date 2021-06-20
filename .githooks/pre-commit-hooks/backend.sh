#!/bin/sh

dir=backend

set +e
git diff --staged --diff-filter=ACMR --name-only | grep  "^$dir/" 
exitCode="$?"
set -e

# 1 represents no files found
if [ $exitCode = 1 ]; then
        exit 0
fi

echo "backend tests"
echo "go test ./..."

# go test ./...

#!/bin/bash

debug() {
  if [[ ! -z "${DEBUG_GITHOOKS-}" ]];
  then
    echo "debug: $1"
  fi
}

changed() {
  git diff --staged --diff-filter=ACDMR --name-only | grep "^$1/" >/dev/null
}

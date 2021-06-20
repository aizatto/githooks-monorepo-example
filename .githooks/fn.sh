#!/bin/sh

debug() {
  [ -n "$DEBUG_GITHOOKS" ] && echo "debug: $1"
}

changed() {
	git diff --staged --diff-filter=ACDMR --name-only | grep  "^$1/" > /dev/null
}
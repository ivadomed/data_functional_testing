#!/bin/bash

echo "Hello, world!"
FILES = $(git diff --name-only --line-prefix=`git rev-parse --show-toplevel`/ origin/master HEAD)
echo "${FILES}"

#!/bin/bash

MAX_FILE_SIZE=500000
echo "Hello, world!"
FILES=$(git diff --name-only --line-prefix=`git rev-parse --show-toplevel`/ HEAD origin/master)
echo "${FILES}"
echo `git branch -r`
git diff --name-only "$GITHUB_BASE_REF..$GITHUB_SHA"
# git diff --name-only `git merge-base origin/master ${GITHUB_REF#refs/heads/}`..${GITHUB_REF#refs/heads/}
git diff --name-only origin/master...${GITHUB_REF#refs/heads/}

# file_list=($FILES)
# for i in "${file_list[@]}"
# do
# 	echo $i
#     FILE_SIZE=$(stat -f%z $i)
#     if [ ${FILE_SIZE} -gt ${MAX_FILE_SIZE} ]
#     then
#         echo File $i is too large!
#         exit 1
#     fi
# done

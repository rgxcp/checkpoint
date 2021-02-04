#!/bin/bash
LAST_COMMIT_MESSAGE=$(git log -1 --pretty=%B)
MESSAGE=$(echo ${LAST_COMMIT_MESSAGE} | cut -d '-' -f1)
INDEX=$(echo ${LAST_COMMIT_MESSAGE} | cut -d '-' -f2)
let INDEX=INDEX+1
COMMIT_MESSAGE=${MESSAGE}-${INDEX}

git add -A
git commit -m "${COMMIT_MESSAGE}"

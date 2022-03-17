#!/usr/bin/bash

set -e

BOT_TOKEN=${BOT_TOKEN}
GITHUB_ACTOR=${BOT_NAME}
REPOSITORY="samyakb/demo-repo-two"

remote_repo="https://${GITHUB_ACTOR}:${BOT_TOKEN}@github.com/${REPOSITORY}"

echo "${remote_repo}"

# git push "${remote_repo}" HEAD:main --force-with-lease
git pull upstream main
git remote add upstream "${remote_repo}"

echo "Echo remote"
git remote -v

git push upstream main

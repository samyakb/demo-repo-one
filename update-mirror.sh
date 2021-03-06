#!/usr/bin/bash

set -e

BOT_TOKEN=${BOT_TOKEN}
GITHUB_ACTOR=${BOT_NAME}
# TODO: later move this to secret token
REPOSITORY="samyakb/demo-repo-three"

remote_repo="https://${GITHUB_ACTOR}:${BOT_TOKEN}@github.com/${REPOSITORY}"

echo "${remote_repo}"

# git push "${remote_repo}" HEAD:main --force-with-lease
git remote add upstream "${remote_repo}"

git push -u upstream main

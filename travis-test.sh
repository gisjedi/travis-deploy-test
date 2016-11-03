#!/usr/bin/env sh

echo ${TRAVIS_BRANCH}
echo ${TRAVIS_PULL_REQUEST}
# Only push docs to gh-pages on explicit builds from master. Pull requests will be ignored
if [ "${TRAVIS_BRANCH}" != "master" ] || [ "${TRAVIS_PULL_REQUEST}" != "false" ]; then 
  echo "Skipping update of Github hosted documentation. Updates are made only via explicit builds of master - pull requests are skipped."
  exit 0
fi

echo Doing build of whatever I was supposed to...

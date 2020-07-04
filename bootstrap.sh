#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

FILES_TO_COPY=$( find . -mindepth 1 ! -path "./.git*" ! -name "bootstrap.sh" ! -name "README.md" ! -name "LICENSE" )

function doIt() {
  for file in ${FILES_TO_COPY}; do
    LOCAL_FILE=${file};
    REMOTE_FILE=$( basename ${file} );
    cp -v ${LOCAL_FILE} ~/${REMOTE_FILE}
  done
  source ~/.bash_profile;
}

function printDiff() {
  LOCAL_FILE=${1};
  REMOTE_FILE=$( basename ${1} );
  echo "Differences in [ ${REMOTE_FILE} ] between local file and remote file";
  diff --side-by-side --ignore-case --ignore-tab-expansion --ignore-all-space --ignore-blank-lines --suppress-common-lines --ignore-blank-lines --color=always ${LOCAL_FILE} ~/${REMOTE_FILE}
}

function viewDiff() {
  for file in ${FILES_TO_COPY}; do
    printDiff ${file}
  done
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  viewDiff;
  doIt;
else
  viewDiff;
  echo "";
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;

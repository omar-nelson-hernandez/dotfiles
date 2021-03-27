#!/usr/bin/env bash

echo "Installing bash config"

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

for file in ${SCRIPTPATH}/{path,bash_prompt,exports,aliases,functions,extra,bash_profile,bashrc}; do
  [ -r "$file" ] && [ -f "$file" ] && ln -s ${file} ~/.$(basename ${file});
done;
unset file;

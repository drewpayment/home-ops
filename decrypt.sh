#!/bin/bash

# if first argument is null exit
if [ -z "$1" ]; then
  echo "Please provide a file to decrypt!"
  exit 1
fi

export SOPS_AGE_KEY_FILE=$(pwd)/age.key

sops --decrypt --ignore-mac --in-place $1

exit 0

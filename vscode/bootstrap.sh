#!/usr/bin/env bash

set -eu

while read -r extension || [ -n "$extension" ]; do
  [ -z "$extension" ] && continue

  echo "Installing $extension"
  code --install-extension "$extension"
done < "$(dirname "$0")/extensions.txt"
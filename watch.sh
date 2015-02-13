#!/bin/bash
# requires a global install of the npm module 'watchy'
if [ ! -d "$1" ]; then
  echo "target directory not specified or does not exist"
else
  theme="$1/themes/techdocshugotheme"
  echo "output to: $theme"
  if [ ! -d "$theme" ]; then
    echo "you need to have subdirectory '/themes/techdocshugotheme' in your project folder"
  else
    watchy --watch static --ignoreHiddenFiles true --$cmd cp -r static $theme
  fi
fi

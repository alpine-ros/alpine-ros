#!/bin/bash

echo '# DO NOT EDIT THIS FILE! It is automatically generated.'
IFS=""
while read -r line; do
  if [[ "${line}" =~ ^@@IMPORT\  ]]; then
    cat $(echo ${line} | cut -f2 -d' ')
  else
    echo "${line}"
  fi
done

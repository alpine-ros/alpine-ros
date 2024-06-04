#!/bin/bash

header_added=false
IFS=""
while read -r line; do
  if ! ${header_added} && ! [[ "${line}" =~ ^#[[:space:]]*[a-z]+[[:space:]]*= ]]; then
    echo '# DO NOT EDIT THIS FILE! It is automatically generated.'
    header_added=true
  fi
  if [[ "${line}" =~ ^@@IMPORT\  ]]; then
    cat $(echo ${line} | cut -f2 -d' ') | sed '/^#\s*\S\+\s*=/d'
  else
    echo "${line}"
  fi
done

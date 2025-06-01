#!/bin/bash
data=("$@")
min=
max=
for e in "${data[@]}"; do
  if [[ $min ]]; then
    if (( e < min )); then
      min=$e
    elif (( e > max )); then
      max=$e
    fi
  else
    min=$e
    max=$e
  fi
done
echo "Range = $min-$max"

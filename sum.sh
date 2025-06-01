#!/bin/bash
data=("$@")
sum=0
for e in "${data[@]}"; do
  if [[ $e =~ [0-9] ]]; then
    sum="$(echo "$sum + $e" | bc)"
  else
    exit 1
  fi
done
echo "Sum = $sum"

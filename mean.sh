#!/bin/bash
data=("$@")
total=0
for e in "${data[@]}"; do
  if [[ $e =~ [0-9] ]]; then
    total="$(echo "$total + $e" | bc)"
  else
    exit 1
  fi
done
mean="$(echo "scale=2; $total / ${#data[@]}" | bc)"
echo "Mean = $mean"

#!/bin/bash
data=("$@")
echo "Printing Data:"
for e in "${data[@]}"; do
  echo "$e"
done

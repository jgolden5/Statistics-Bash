#!/bin/bash
data=("$@")
for e in "${data[@]}"; do
  echo $e >>temp
done
mode=$(uniq -c temp | sort -nr | head -1 | awk '{ print $2 }')
rm temp && echo "Mode = $mode"

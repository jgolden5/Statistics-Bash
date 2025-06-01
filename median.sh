#!/bin/bash
data=("$@")
middle_index="$(echo "${#data[@]} / 2" | bc)"
sorted_data=($(printf "%s\n" "${data[@]}" | sort -n))
median="${sorted_data[$middle_index]}"
echo "Median = $median"

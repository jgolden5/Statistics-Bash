#!/bin/bash
data=("$@")
middle_index="$(echo "${#data[@]} / 2" | bc)"
median="${data[$middle_index]}"
echo "Median = $median"

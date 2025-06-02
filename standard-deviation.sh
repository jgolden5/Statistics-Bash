#!/bin/bash
data=("$@")
mean=$(./mean.sh ${data[@]} | sed 's/.*= \(.*\)/\1/')
sum_of_differences=0
for e in "${data[@]}"; do
  sum_of_differences=$(echo "$sum_of_differences + ($e - $mean) * ($e - $mean)" | bc)
done
quotient=$(echo "scale=2; $sum_of_differences / ${#data[@]}" | bc)
standard_deviation=$(echo "scale=2; sqrt($quotient)" | bc)
echo "Standard Deviation = $standard_deviation"

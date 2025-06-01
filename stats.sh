data=("$@")
./print_stats.sh ${data[@]}
echo
echo "Basic Stats:"
./mean.sh ${data[@]}
./median.sh ${data[@]}
./mode.sh ${data[@]}
./range.sh ${data[@]}
./sum.sh ${data[@]}

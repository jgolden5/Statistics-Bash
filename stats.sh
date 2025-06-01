data=("$@")
echo "Basic Stats"
./mean.sh ${data[@]}
./median.sh ${data[@]}
./mode.sh ${data[@]}
./range.sh ${data[@]}

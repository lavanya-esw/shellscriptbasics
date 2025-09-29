#!/bin/bash
temp=$1
for num in $@; do  # 3 5 8 3
    if [ $num -gt $temp ]; then
       temp=$num
    fi
done
echo "largest number is $temp"
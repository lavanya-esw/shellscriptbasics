#!/bin/bash

for num in $@; do 5 6 7 2
    temp=$num
    if [ $num -gt $temp ]; then
       temp=$num
    fi
echo "largest number is $temp"
done
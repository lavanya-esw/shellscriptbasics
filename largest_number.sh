#!/bin/bash

for num in $@; do 
    temp=$num
    if [ $num -gt $temp ]; then
       temp=$num
    fi
done
echo "largest number is $temp"
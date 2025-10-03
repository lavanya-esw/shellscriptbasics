#!/bin/bash

for (( i=0; i<5; i++ )); do
#for (( i=0; i<5; i++ )); do
    for((j=i; j<=1; j++)); do
        echo $j
    done
done
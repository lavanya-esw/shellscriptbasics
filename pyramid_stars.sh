#!/bin/bash
read n
for (( i=1; i<=n; i++ )); do
#for (( i=0; i<5; i++ )); do
    for((j=i; j<=n; j++)); do
      echo -n $i
      j+=$j
    done
    echo $j
done
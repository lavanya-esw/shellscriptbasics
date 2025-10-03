#!/bin/bash

read -p "Enter number of rows: " n

# for (( i=1; i<=n; i++ ))
# do
#   for (( j=i; j<n; j++ ))
#   do
#     echo -n " "
#   done

#   for (( j=1; j<=2*i-1; j++ ))
#   do
#     echo -n "*"
#   done

#   echo
# done

for((i=1; i<=n; i++)); do
    for((j=i; j<n; j++)); do
        echo -n " "
    done

    for(( j=1; j<=(2*i-1); j++ )); do
        echo -n "*"
    done

    echo 
done

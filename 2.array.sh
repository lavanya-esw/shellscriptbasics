#!/bin/bash

FRUITS=("apple" "banana" "orange" "pineappale")

LENGTH=${#FRUITS[@]}
echo "Lenth of the array is $LENGTH"
echo "first element : ${FRUITS[0]}"
echo "second element : ${FRUITS[1]}"
echo "third element : ${FRUITS[2]}"
echo "fourth element : ${FRUITS[3]}"
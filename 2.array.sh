#!/bin/bash

FRUITS=("apple" "banana" "orange" "pineappale")

LENGTH=$(${#FRUITS[@]})
echo "Lenth of the array is $LENGTH"

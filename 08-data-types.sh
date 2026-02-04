#!/bin/bash

# Number

NUM1=500 # Everything in shell is string by default
NUM2=1000

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

# New

NUM1=500 # Everything in shell is string by default
NUM2=Hello # It considers letter value as 0

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"


# Array --> List of strings which are stored in contiguous memory

FRUITS=("Apple" "Banana" "Cherry")

echo "Fruits are: ${FRUITS[@]}"

# Array1 position/index in coding starts from 0. Here Size=3, Index=size-1

FRUITS=("Apple" "Banana" "Cherry")

echo "First Fruit is: ${FRUITS[0]}"
echo "Second Fruit is: ${FRUITS[1]}"
echo "Third Fruit is: ${FRUITS[2]}"
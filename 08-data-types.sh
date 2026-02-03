#!/bin/bash

NUM1=500 # Everything in shell is string by default
NUM2=1000

SUM=$(($NUM1+$NUM2))

echo " Sum is: $SUM"

# New

NUM1=500 # Everything in shell is string by default
NUM2=Hello # It considers letter value as 0

SUM=$(($NUM1+$NUM2))

echo " Sum is: $SUM"


# Array --> List of strings which are stored in continuous memory

FRUITS=("Apple" "Banana" "Cherry")



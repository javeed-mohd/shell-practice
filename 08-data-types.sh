#!/bin/bash

NUM1=500 # Everything in shell is string by default
NUM2=1000

SUM=$(($NUM1+$NUM2))

echo " Sum is: $SUM"

NUM1=500 # Everything in shell is string by default
NUM2=Hello

SUM=$(($NUM1+$NUM2))

echo " Sum is: $SUM"
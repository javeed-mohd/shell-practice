#!/bin/bash

# -eq	-> Equal to
# -ne	-> Not equal to
# -gt	-> Greater than
# -lt	-> Less than
# -ge	-> Greater than or equal to
# -le	-> Less than or equal to

# Comment as per requirement

NUM=$1

# 1

if [ $NUM -gt 21 ]; then
    echo "Given number: $NUM is greater than 21"
fi

# 2

if [ $NUM -gt 21 ]; then
    echo "Given number: $NUM is greater than 21"
else
    echo "Given number: $NUM is lesser than 21"
fi

# 3

if [ $NUM -gt 21 ]; then
    echo "Given number: $NUM is greater than 21"
elif [ $NUM -eq 21 ]; then
    echo "Given number: $NUM is equal to 21"
else
    echo "Given number: $NUM is lesser than 21"
fi
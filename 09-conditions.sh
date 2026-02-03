#!/bin/bash

# -eq	-> Equal to
# -ne	-> Not equal to
# -gt	-> Greater than
# -lt	-> Less than
# -ge	-> Greater than or equal to
# -le	-> Less than or equal to

NUM=$1

# 1

if [ $NUM -gt 21 ]; then
    echo "Given number: $NUM is greater than 21"
fi

# 2

if [ $NUM -gt 21 ]; then
    echo "Given number: $NUM is greater than 21"
else
    echo "Given number: $NUM is less than 21"
fi
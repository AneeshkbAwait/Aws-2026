#!/bin/bash

NUM1=$1
NUM2=$2

SUM=$((NUM1 + NUM2))

echo "Sum: $SUM" >> $GITHUB_OUTPUT
echo "Summed value passed to output variable for access...................."

echo "Printing sum in current step= "$SUM
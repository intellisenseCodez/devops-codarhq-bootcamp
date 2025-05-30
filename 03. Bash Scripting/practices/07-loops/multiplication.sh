#!/bin/bash

n=$1

# make sure command line arguments are passed to the script
if [ $# -eq 0 ]
then
	echo "A shell script to print multiplication table."
	echo "Usage : $0 number"
	exit 1
fi

# Use for loop
for i in {1..10}
do
	echo "$n * $i = $(( $i * $n))"
done
#! /bin/bash

echo "hello"

number=0

for item in ./*.txt
do
	number=$(( number+1 ))
done

echo "The number of items is: $number"	
#! /bin/bash


divisible()
{

	local num=$1
	echo "you wrote $num"



for i in {2,3,5,7,11,13,19,27}
do
	if [ $(( $num%i )) -eq 0 ]; then
		echo "your number $num is divisible by $i"
	fi
done

}

divisible 66

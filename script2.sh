#! /BIN/BASH

mkdir ./hot-folder

for i in $(find . -type d)
do 

if [ "$i" != "./hot-folder" ]; then

	echo "*************FOLDER  $i ********************"

	for myfile in $i/*;
	do
		if [ -f "$myfile" ]; then
		echo "the file inside is: $myfile"

		check=$(grep -ni "bin" "$myfile")
		if [ -z $check ]; then
			echo "EMPTY"
		else
			echo "FOUND!"

			name_f=$(basename $myfile)	

			cp "$myfile" ./hot-folder/"$name_f"
			echo "   " >> ./hot-folder/"$name_f"
			echo "************************" >> ./hot-folder/"$name_f"
			echo "$check" >> ./hot-folder/"$name_f"

		fi	

		fi
	done
	echo "----------------------------------"

fi
		
done

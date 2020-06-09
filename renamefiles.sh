#1 /bin/bash

for i in {1..4}; do
	touch "${i}file.txt"
done	

for i in {1..4}; do
	touch "myfile${i}.jpg"
done

ls -ltr
echo " "

choice=""
while [ "$choice" != "t" -a "$choice" != "j" ];
do
	echo "To rename .jpg files press j, To rename .txt press t: "
	read choice
	echo "You typed $choice"
done


read -p "Write prefix to add to this files" pref
echo "the prefix is $pref"

if [ "$choice" == "t" ]; then
	for element in *.txt
	do
		echo "txt files are: ${element}"
		mv ${element} ${pref}${element}
	done
else
	for element in *.jpg
	do
		echo "jpg files are: ${element}"
		mv ${element} ${pref}${element}
	done	
fi


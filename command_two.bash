#!/bin/bash 
# User enters number of files for first arguement, name of files for second, and number of lines in each file for third

for (( i = 1; i <= $1; i++ ))
do
	
	filename="$2$i.txt"
	#Naming file 
	if [ -f $filename ]
	then 
		echo $filename already exists
		continue
	else 
		for (( j = 1; j <= $3; j++))
		do
		#each loop writes a line of random text to file
		randomString=$(cat /dev/urandom | tr -cd 'a-f0-9' | head -c 80)
		#random string writes 80 characters to file (80 chars is one line)
		echo "$randomString" >> $filename
		done
	echo "created " $filename ", containing $3 lines"  
	fi
done



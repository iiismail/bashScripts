#!/bin/bash
#This code makes files executable
#The user has to type in the name of at least one file an as an arguement
#This loops through all arguements and makes all files executable
	for file in "$@"
	do
		chmod 777 $file
		#makes executable to all users
		if [ $? -eq 0 ]
		#if previous command was successfull
        	then
                	echo "The file $file is now executable"
       		 else
                	echo"error the rights for file $file could not be changed to executable"
        	fi

	done

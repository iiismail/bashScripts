#!/bin/bash
#copies files from current directory, and copies into .waste directory


for file in "$@"
do
        
        if [ -f $file ]
        then
                cp $file ~/bin/.waste
		echo $file "has been copied to directory .waste"

        else
                echo $file "does not exist"
fi
done



#!/bin/bash
#prints first set or last set of lines, number of lines is variable
dir=$1
#directory is first arguement entered
cd $HOME/$dir
#for file in current directory
for file in *;
do

        echo $file
        echo "type 'head' for the first set of lines or 'tail' for the last set of lines"

        read choice

        if [ $choice == "head" ]
        then
                echo "Type the number of lines you want to read from the beginning of " $file
                read fnumber
                head -$fnumber $file
		#prints first number of lines
        elif [ $choice = "tail" ]
        then
                echo "How many lines do you want to read from the END of "$file
                read end_number
                tail -$end_number $file
		#prints last number of lines
        else
                echo "Error, please type either 'head' or 'tail'"

        fi


done
# command will keep looping for all files in current directory

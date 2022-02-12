#!/bin/bash
#Program outputs number of files in waste bin

cd ~/bin/.waste
num_of_files=$(ls -al | wc -l)

echo "The number of files in the wastebin are $num_of_files"

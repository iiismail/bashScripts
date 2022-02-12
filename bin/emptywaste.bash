#!/bin/bash 

rm -rf ~/bin/.waste/*
if [ $? = 0  ]
then 
	echo "The waste bin was emptied"
else
	echo "The wastebin could not be emptied"
fi

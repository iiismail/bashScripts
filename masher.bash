#!/bin/bash
digits=0
letters=0
special_char=0
while [[ ! $string =~ ["*"] ]]
do
echo "enter string"
read string

size=${#string}
echo $size
for (( index = 0; index < $size; index++ ))
do
	character="${string:$index:1}"
	if [[ $character =~ ^[0-9]+$ ]]
	then
		
		digits=$(expr $digits + 1)
	elif [[ $character == *[a-z]* ]]
	then
		letters=$(expr $letters + 1)
                

	elif [[ $character == *['!'@#\$%^\&*()_+]* ]]

	then 
		special_char=$(expr $special_char + 1)
	
 	
		
	fi
done		
done

echo $digits
echo $letters
echo $special_char

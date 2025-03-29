#! /usr/bin/bash

# strings

	# comaprar strings

	echo "Enter your password"
	
	read input1
	
	echo "Repeat your password"
	
	read input2
	
	echo "$input1 $input2"
	
	if [ $input1 = $input2 ] # comparo strings

	then
		echo "Password verify"
	else
		echo "Wrong password"
	fi
	
	# concatenar strings
	
	echo "enter a name"
	read name
	
	echo "write a adjetive"
	read adjective
	
	result="$name is $adjective"
	
	echo $result
	
	
	# Convertir a minúsculas en Zsh
	
    echo "$result" | tr '[:upper:]' '[:lower:]'

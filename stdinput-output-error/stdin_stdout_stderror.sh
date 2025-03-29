#! /usr/bin/bash

# standar input stdin

	while read line
	do
		echo $line
	done < "${1:-/dev/stdin}"
	
	# el standart input puede ser lo que le paso por consola,
	# o tambien un archivo que le pase por parametro
	
# standar output y error 

	ls 1>>stdout.txt
	
	ls -123 2>>stderror.txt
	
	 #1 es output  2 es error, los > pueden ser dimples o dobles
	
	ls 1>loger.txt 2>&1 # con este formato guardara tanto errors como outputs
	

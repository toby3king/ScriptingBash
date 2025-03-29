#! /usr/bin/sh

# argumentos


	echo $1 $2 $3 # si al momento de ejecutar le paso argumentos al script los puedo usar
	
	# estos se enumeran por apariciob de 0 a n, el 0 es el nombre del 	 script ejecutado
	# $@ lee del primero en adelante
	# $# cuanta el total de argumentos
	
	args=("$@")
	
	echo "el argumento: ${args[1]}"
	
	# pongo todos los args en una lista y muestro el primero

#! /usr/bin/bash

# pipes

	# tuberias, son formas de pasar como parametro otros comandos
	
	ls | wc -l 
	
	# wc recibe un archivo y cuenta lineas palabras etc
	# de esta forma le paso ls como parametro a wc
	
	MESSAGE="hola mundo"
	
	echo $MESSAGE | wc -m
	
	# siguiendo este principio, se pueden llamar a otros scripts

	export MESSAGE
	
	./otro_bash.sh
	

#! /usr/bin/sh

	age=92 #declaracion de variable
	
	if [ $age -eq 10 ] #-eq es equal, muy importante espacios e identacion
	then  #-ge greterequal, -le lessequal
	  
	  echo "tenes la edad de messi"
	
	elif (( $age >= 18 )) #se puede usar esta sintaxis tambien
	
	then echo "tas mayorcito"
	
	else echo "sos un wachin" #asi funciona else
	fi

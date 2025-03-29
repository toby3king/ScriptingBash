#! /usr/bin/bash

# arrays

	
	# [*] trata al array como un solo string
	
	# [@] mantiene la independencia de strings
	
	nombres=( "jhon" "toto" "pipeline" ) # declarar strings
	
	echo "los nonmbres son: ${nombres[*]}" # entre corchetes va el index, el */@ indica all
	
	echo "los indices: ${!nombres[*]}" # en bash se usa ! en lugar de (k)
	
	echo "total de items: ${#nombres[*]}" # en bash se usa numeral para contar n de elementos
	
	echo " el ultimo elemento es: ${nombres[${#nombres[@]}-1]} " # accedo al ultimo elemento
	
	for name in "${nombres[@]}"
	do
		echo "el nombre del array es $name "
	done
	
	# eliminar
	
	unset nombres[1] # borro segundo elemento, no compacta array
	
	echo " ${nombres[@]}"
	
	# añadir 

	nombres[${#nombres[@]}]="cristofer"
	
	echo " ${nombres[@]}" 
	
	nombres+=("ben10") # equivalente a la anterior
	
	echo " ${nombres[@]}" 

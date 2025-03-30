#! /usr/bin/bash

# directories

	#chequear carpetas y herramoientas
	
	folder="prueba_comprobar_carpeta"
	
	
	if [ -d $folder ] # comprueba en entorno de ejecucion
	then
	echo "la carpeta $folder existe"
	else
	echo "la carpeta $folder no existe"
	fi
	
	# con -f controlas files de la misma manera que los folders/directorios

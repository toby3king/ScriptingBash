#! /usr/bin/sh

# metodo para crear archivo
 
	#touch archivo.txt
 
# crear carpeta y mover archivo fuente-destino
	
	#mkdir pruebas_bash
	#mv practica_bash.sh /home/kali/Desktop/pruebas_bash
	
# comando para printear a terminal

	#echo hello world
	
# crear,sobrescribir y escribir archivo

	#echo "hola mundo" > escritos.txt #crea o sobrescribe el archivo
	#echo "algunas aclaraciones" >> escritos.txt #le añade sin overwrite
	
# escribir en el archivo hasta finalizar el input con ctrl+d

	#cat >> escritos.txt #misma consideracion que con echo >,>>
	
# delimitador cat, le pasas el texto hasta el delimitador como argumento

	#cat << myText
	#esto se
	#mostrara
	#por terminal
#myText

# read, cuarda en una variable lo que el usuario tipee en terminal

	#echo introduce tu edad
	#read age
	#echo "esta es tu edad: $age" #concatena strings

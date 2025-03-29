#!/usr/bin/bash

# consideraciones: al ejecutar el bash este lo hace desde el directorio que es llamado
# si necesitas un directorio especifico deberas moverte a la ruta con cd primero.

# comando para verificar shells instaladas

 
	#cat /etc/shells
	
# comando para ver shell actual
	
	#echo $SHELL
 
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
	
# condicionales,logica de control


	#age=92 #declaracion de variable
	
	#if [ $age -eq 10 ] #-eq es equal, muy importante espacios e identacion
	#then # -ge greterequal, -le lessequal
	  #echo "tenes la edad de messi"
	#elif (( $age >= 18 )) #se puede usar esta sintaxis tambien
	#then echo "tas mayorcito"
	#else echo "sos un wachin" #asi funciona else
	#fi
	
# operadores logicos

	# estos son &&,||, 
	
	# si uso la primer sintaxis las comparaciones pueden ir en corchetes separados o juntos
	# if [[ A && B ]] // if [ A ] && [ B ] 
	# reitero la importancia del espacio entre corchetes
	# si estan en uno solo se puede cambiar || por -o

# case

	#echo "escoge entre 1 0 2"
	#read valor
	
	#case $valor in
	#1)
	  #echo "elegiste 1"
	#;;
	#2)
	  #echo "elegiste 2"
	#;;
	#*)
	  #echo "fijate lo que tecleas man"
	#;;
	#esac
	
# loops

	#number=0
	
	#while [ $number -lt 10 ]
	#do
	  #echo $number
	  #number=$((number + 1))
	#done
	
	# until es inverso al while
	
	#number=0
	
	#until [ $number -eq 10 ] # hasta
	#do
	  #echo "el numero actual es: $number "
	  #number=$((number + 1))
	#done
	
	# for
	
	#for i in 1 2 3 4 5
	#do
	  #echo $i
	#done
	
	#for i in {0..20..2} # similar a c
	#do
	  #echo $i
	#done
	
	#for (( i=0; i < 10; i++)) # muy similar a c
	#do
	  #echo $i
	#done
	
# break,continue
	
	# break
	
	#for i in {0..10..1}
	#do
		#echo $i
		
		#if [ $i -ge 5 ]
		#then
			#break
		#fi
			
	#done
	
	# continue
		
		#for i in {0..10..1}
	#do
		
		
		#if [ $i -ge 5 ] && [ $i -le 7 ]
		#then
			#continue
		#fi
		
		#echo $i
			
	#done
	
	
# argumentos


	#echo $1 $2 $3 # si al momento de ejecutar le paso argumentos al script los puedo usar
	
	# estos se enumeran por apariciob de 0 a n, el 0 es el nombre del script ejecutado
	# $@ lee del primero en adelante
	# $# cuanta el total de argumentos
	
	#args=("$@")
	
	#echo "el argumento: ${args[1]}"
	
	# pongo todos los args en una lista y muestro el primero
	
	
# standar input stdin

	#while read line
	#do
		#echo $line
	#done < "${1:-/dev/stdin}"
	
	# el standart input puede ser lo que le paso por consola,
	# o tambien un archivo que le pase por parametro
	
# standar output y error 

	#ls 1>>stdout.txt
	
	#ls -123 2>>stderror.txt
	
	# 1 es output  2 es error, los > pueden ser dimples o dobles
	
	#ls 1>loger.txt 2>&1 # con este formato guardara tanto errors como outputs
	
	
# pipes

	# tuberias, son formas de pasar como parametro otros comandos
	
	#ls | wc -l
	
	# wc recibe un archivo y cuenta lineas palabras etc
	# de esta forma le paso ls como parametro a wc
	
	#MESSAGE="hola mundo"
	
	#echo $MESSAGE | wc -m
	
	# siguiendo este principio, se pueden llamar a otros scripts
	
	#export MESSAGE
	
	#./otro_bash.sh
	
# strings

	# comaprar strings

	#echo "Enter your password"
	
	#read input1
	
	#echo "Repeat your password"
	
	#read input2
	
	#echo "$input1 $input2"
	
	#if [ $input1 = $input2 ] # comparo strings

	#then
		#echo "Password verify"
	#else
		#echo "Wrong password"
	#fi
	
	# concatenar strings
	
	#echo "enter a name"
	#read name
	
	#echo "write a adjetive"
	#read adjective
	
	#result="$name is $adjective"
	
	#echo $result
	
	
	# Convertir a minúsculas en Zsh
	
    #echo "$result" | tr '[:upper:]' '[:lower:]'
    
    
# numbers operadores de c: +,-,*,/,%

	#echo 10+20
	
	#echo $(( 10 + 20 ))
	
	#echo $(( 10 - 20 ))
	
	#x=10
	#y=100
	
	#echo $(( x * y ))
	
	# solo poniendolo entre parentesis con el id de var se realiza la operacion

	# se puede utilizar con formato expr teniendo cuidado con
	# el asterisco, debiendo escaparlo siendo parte de bash \*
	
	#echo $(expr $x \* $y)
	
	
# declare: otra forma de definir variables


	#declare -r myvar=~/ # con -r le indico que es solo lectura
	
	# esto permite mas control de nuestras variables
	
# arrays

	
	# [*] trata al array como un solo string
	
	# [@] mantiene la independencia de strings
	
	#nombres=( "jhon" "toto" "pipeline" ) # declarar strings
	
	#echo "los nonmbres son: ${nombres[*]}" # entre corchetes va el index, el */@ indica all
	
	#echo "los indices: ${!nombres[*]}" # en bash se usa ! en lugar de (k)
	
	#echo "total de items: ${#nombres[*]}" # en bash se usa numeral para contar n de elementos
	
	#echo " el ultimo elemento es: ${nombres[${#nombres[@]}-1]} " # accedo al ultimo elemento
	
	#for name in "${nombres[@]}"
	#do
		#echo "el nombre del array es $name "
	#done
	
	# eliminar
	
	#unset nombres[1] # borro segundo elemento, no compacta array
	
	#echo " ${nombres[@]}"
	
	# añadir 

	#nombres[${#nombres[@]}]="cristofer"
	
	#echo " ${nombres[@]}" 
	
	#nombres+=("ben10") # equivalente a la anterior
	
	#echo " ${nombres[@]}" 
	
	
# functions

	# las variables de las funciones son globales


	#function sayhello(){
		#local msj="mensaje local" # lo declaro como local
		#echo "hello world $1"
		#echo $msj;
		#} # la identacion da problemas
		
		
	#for i in {0..10..1}
	 #do
	     #sayhello $i
	 #done
	 
	 
# directories

	#chequear carpetas y herramoientas
	
	#folder="prueba_comprobar_carpeta"
	
	
	#if [ -d $folder ] # comprueba en entorno de ejecucion
	#then
	#echo "la carpeta $folder existe"
	#else
	#echo "la carpeta $folder no existe"
	#fi
	
	# con -f controlas files
	
# curl 

	# hace peticiones http
	# muy util para trabajar con apis y servidores
	
	
	# Descargar una imagen de ejemplo 
	
	#curl -o imagen-descargada.jpg https://cdn.pixabay.com/photo/2022/12/02/21/20/blue-7631674_1280.jpg

# debugging

  #bash -x
  
  # sirve para debugear
  
  ## nota al pie
  
  # para manejo de tiempo y programas,programas en segundo plano y demonios:
  # buscar en repositorio la carpeta "manejo_de_tiempo_y_programas"








		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	













	
	 
	
	






















 

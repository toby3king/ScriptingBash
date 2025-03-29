#! /usr/bin/bash

# functions

	# las variables de las funciones son globales


	function sayhello(){
		local msj="mensaje local" # lo declaro como local
		echo "hello world $1"
		echo $msj;
		} # la identacion da problemas
		
		
	for i in {0..10..1}
	 do
	     sayhello $i
	 done
	 
	 #nota al pie
	 #no es necesario usar la palabra clave function
	 #la empleo para mayor legibilidad

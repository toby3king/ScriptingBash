#! /usr/bin/bash

# operadores logicos

	# estos son &&,||, 
	
	# si uso la sintaxis de bash las comparaciones pueden ir en corchetes separados o juntos
	
	# if [[ A && B ]] // if [ A ] && [ B ] 
	
	# reitero la importancia del espacio entre corchetes
	
	# si estan entre corchetes juntas se puede cambiar || por -o
	
# operadores numericos, operadores de c: +,-,*,/,%

	echo 10+20
	
	echo $(( 10 + 20 ))
	
	echo $(( 10 - 20 ))
	
	x=10
	y=100
	
	echo $(( x * y ))
	
	# solo poniendolo entre parentesis con el id de var se realiza la operacion

	# se puede utilizar con formato expr teniendo cuidado con
	# el asterisco, debiendo escaparlo siendo parte de bash \*
	
	echo $(expr $x \* $y)

#! /usr/bin/sh

# until

	until [ $number -eq 10 ] # hasta
	do
	  echo "el numero actual es: $number "
	  number=$((number + 1))
	done
	

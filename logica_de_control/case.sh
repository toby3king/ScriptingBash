#! usr/bin/bash

# case

	echo "escoge entre 1 0 2"
	read valor
	
	case $valor in
	1)
	  echo "elegiste 1"
	;;
	2)
	  echo "elegiste 2"
	;;
	*)
	  echo "fijate lo que tecleas man"
	;;
	esac

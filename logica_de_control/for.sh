#! /usr/bin/bash

# for
	
	for i in 1 2 3 4 5
	do
	  echo $i
	done
	
	for i in {0..20..2} # similar a c
	do
	  echo $i
	done
	
	for (( i=0; i < 10; i++)) # muy similar a c
	do
	  echo $i
	done

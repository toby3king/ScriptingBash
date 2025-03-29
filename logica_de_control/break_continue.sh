#! /usr/bin/bash

# break,continue
	
	# break
	
	for i in {0..10..1}
	do
		echo $i
		
		if [ $i -ge 5 ]
		then
			break
		fi
			
	done
	
	# continue
		
		for i in {0..10..1}
	do
		
		
		if [ $i -ge 5 ] && [ $i -le 7 ]
		then
			continue
		fi
		
		echo $i
			
	done

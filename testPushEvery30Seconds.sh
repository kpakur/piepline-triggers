#!/bin/bash

# modifies sample file every 30 seconds and commits and pushes

COUNTER=100
until [  $COUNTER -lt 10 ]; do
	echo COUNTER $COUNTER
	
	dt=$(date '+%d/%m/%Y %H:%M:%S');
	echo "$dt"
	echo "$dt" > "SampleFileToModify.txt"
	
	git commit -a -m "sample file changed automatically"
	git push
	
	sleep 30
	let COUNTER-=1
done
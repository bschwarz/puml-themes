#!/bin/sh

PLANT=~/devcontent/bin/plantuml-1-2019-08.jar

##
## Loop over the examples for each type of diagram
##
for E in examples/*.puml; do

	##
	## Loop over each theme
	##
	for D in themes/*; do
		for C in $D/*.puml; do
			if [ -f $C ]; then
				##puml.sh $E -tsvg -config C 
				java -Djava.awt.headless=true -jar $PLANT $E -tsvg -config $C -o ${PWD}/$D
				echo "$D -> $E"
			fi
		done
	done
done

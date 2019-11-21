#!/bin/sh

#PLANT=~/devcontent/bin/plantuml-1-2019-08.jar
# PLANT=~/devcontent/bin/plantuml.1.2019.11.jar
PLANT=~/devcontent/bin/plantuml.1.2019.12.jar

##
## examples for each type of diagram
##
EX=examples/*.puml

##
## Loop over each theme
##
for D in themes/*; do
	C=$D/puml-theme-*.puml
	if [ -f $C ]; then
		##puml.sh $E -tsvg -config C 
		java -Djava.awt.headless=true -jar $PLANT $EX -tpng -config $C -o ${PWD}/$D
		echo "Theme: $D"
	fi
done

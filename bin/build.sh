#!/bin/sh

if [ $# -ne 1 ]; then
	echo Usage: $0 theme_name >&2
	exit 1
fi

THEME=$1

PLANT=~/devcontent/bin/plantuml-1-2019-08.jar

##
## Loop over the examples for each type of diagram
##
for E in examples/*.puml; do

	FILE=themes/$THEME/puml-theme-*.puml
	if [ -f $FILE ]; then
		java -Djava.awt.headless=true -jar $PLANT $E -tsvg -config $FILE -o ${PWD}/themes/$THEME/
		echo "$THEME -> $E"
	fi
done

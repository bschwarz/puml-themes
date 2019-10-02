#!/bin/sh

if [ $# -eq 0 ]; then
	echo Usage: $0 theme_name ?flags_to_plantuml? >&2
	exit 1
fi

FLAGS=""
if [ $# -eq 2 ]; then
	FLAGS="-DBGCLR=$2"
	echo $FLAGS
fi

THEME=$1

PLANT=~/devcontent/bin/plantuml-1-2019-08.jar

##
## Build the examples for each type of diagram
##
FILE=themes/$THEME/puml-theme-*.puml
EX=examples/*.puml
if [ -f $FILE ]; then
	java -Djava.awt.headless=true -jar $PLANT $EX $FLAGS -tsvg -config $FILE -o ${PWD}/themes/$THEME/
	echo "$THEME"
fi


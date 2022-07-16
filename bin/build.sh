#!/bin/sh

if [ $# -eq 0 ]; then
	echo Usage: $0 theme_name ?flags_to_plantuml? >&2
	exit 1
fi

FLAGS=""
if [ $# -eq 2 ]; then
	FLAGS="-D$BGCOLOR=$2"
	echo $FLAGS
fi

THEME=$1

#PLANT=~/devcontent/bin/plantuml-1-2019-08.jar
# PLANT=~/devcontent/bin/plantuml.1.2019.11.jar
#PLANT=~/devcontent/bin/plantuml.1.2019.12.jar
#PLANT=~/devcontent/bin/plantuml.1.2019.13.jar
#PLANT=~/devcontent/bin/plantuml.1.2020.0.jar
#PLANT=~/devcontent/bin/plantuml.1.2020.8.jar
#PLANT=~/devcontent/bin/plantuml-beta.jar
PLANT=bin/plantuml-1.2022.6.jar

##
## Build the examples for each type of diagram
##
FILE=themes/$THEME/puml-theme-*.puml
EX=examples/*.puml
if [ -f $FILE ]; then
# FF=$(pwd)/$FILE
# echo $FF
	#java -Djava.awt.headless=true  -jar $PLANT $EX -DDIAGRAM=activity -tsvg -config $FILE -o ${PWD}/themes/$THEME/
	java -Djava.awt.headless=true  -jar $PLANT $EX -tsvg -config $FILE -o ${PWD}/themes/$THEME/
	echo "$THEME"
fi


#!/bin/bash

. ./info.sh
. ./condition.sh

if [[ $# -eq 4 ]]; then
	colback1=$1
	colfont1=$2
	colback2=$3
	colfont2=$4
	check=`condition $colback1 $colfont1 $colback2 $colfont2`
	if [[ $check -eq  1 ]]; then
		info $colback1 $colfont1 $colback2 $colfont2
	elif [[ $check -eq 2 ]]; then
		echo "Error: Colours of names are equal"
		echo "Input parametrs again"
		read colback1 colfont1 colback2 colfont2
		./main.sh $colback1 $colfont1 $colback2 $colfont2
	elif [[ $check -eq 3 ]]; then
		echo "Error: Colours of values are equal"
		echo "Input parametrs again"
		read colback1 colfont1 colback2 colfont2
		./main.sh $colback1 $colfont1 $colback2 $colfont2
	else
		echo "There is no colours like that"
	fi	
else 
	echo "Error: you entered too many parameters"
fi

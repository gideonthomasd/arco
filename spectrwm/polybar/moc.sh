#!/bin/bash

#mocp -Q %file | sed 's/\//\n/g' | sed '$!d' | awk '$1>0 {print substr($1,1,6)}'
#echo $this
icon=""
this=""
state=" "
state=$(mocp -Q %state 2>/dev/null)
#echo $state
state=$state"f"
#echo $state
if [ $state == "PLAYf" ]; then
	icon=" "
	this=$(mocp -Q %file 2>/dev/null | sed 's/\//\n/g' | sed '$!d' | sed 's/ /_/g'| awk '$1>0 {print substr($1,1,15)}')
	this=$this"..."
elif [ $state == "PAUSEf" ]; then
	icon=" "
	this=$(mocp -Q %file 2>/dev/null| sed 's/\//\n/g' | sed '$!d' | sed 's/ /_/g'| awk '$1>0 {print substr($1,1,15)}')
	this=$this"..."
else
	icon=" "
	this="[STOP]"
fi

#this=$this | sed '$!d'
echo $icon$this" "

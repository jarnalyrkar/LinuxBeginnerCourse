#!/bin/bash
clear

mappe=`pwd`
if [[ -n $1 ]];
then
	mappe=$1
fi

filer=0
mapper=0
symlink=0

filliste=`ls $mappe`

for f in $filliste; do
	if [[ -h "$f" ]]; 
		then ((symlink++))
	elif [[ -d "$f" ]];
		then ((mapper++))
	else
		((filer++))
	fi
done

echo "$filer filer $mapper mapper $symlink symlinker totalt $(($filer+$mapper+$symlink)) filer"
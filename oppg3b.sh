#!/bin/bash
# THIS DOES NOT WORK PROPERLY!
# Counting and sorting of filetypes
#Syntax: scriptnavn opsjon mappenavn
#(Ex: oppg3b.sh -f mappe2)
#Oppgave løst av 151709 (Joachim Strøm Ekelund)

clear

#Definering av mappe
mappe=`pwd`

if [ -n "$2" ];
then
	mappe=$2
fi

while [ ! -d "$mappe" ]
do
	echo "$mappe finnes ikke"
	echo "Prøv gjerne igjen"
	read mappe
done

mappesti="$mappe/*"

clear
echo -e "Du oppga $mappe";

#Tellefunksjon:
for f in $mappesti
do
	if [[ -d "$f" ]]
		then ((mapper++))
	elif [[ -L "$f" ]]
		then ((symlink++))
	else
		((filer++))
	fi
done


#If setning for å se etter opsjoner:
if [ -d $1 ]
	then
		echo "I mappen er det $filer filer, $mapper mapper og $symlink symbolske linker."
fi

#While-loop til opsjoner:
while getopts ":f :d :L :h" opt; do
	case $opt in
		f)
			echo "I mappen er det $filer filer." >&2
			;;
		d)
			echo "I mappen er det $mapper mapper." >&2
			;;
		L) 
			echo "I mappen er det $symlink symbolske linker." >&2
			;;
		h)
			echo "Forbruk: $usage"
			exit >&2
			;; 
		\?)
			echo "invalid option: -$OPTARG" 
			exit >&2
			;;
	esac
done

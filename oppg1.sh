#!/bin/bash
#Tallpyramide, mellom 1 og 9
#Obligatorisk Oppgave, Innføring i Linux

clear
echo "Tast inn et tall mellom 1 og 9"

#Funskjon som lager pyramide
loop() {
	for((i=1;i<=n;i++)); do
	for((k=i;k<=n;k++)); do
		echo -ne " "; done
	for((j=1;j<=i;j++)); do
	echo -e "$i \c"; done	
	echo ""; done
}

#Leser inn tall, og kjører funksjon
read n
clear
if [[ n -le 9 && n -ge 1 ]]; then
	loop
fi

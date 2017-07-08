#!bin/bash
# Skjult nummer generator
# Obligatorisk oppgave, Innføring i Linux

clear
skjult=$((RANDOM%99+1))
valg=-1

while [ "$valg" != "$skjult" ]; do
    echo -n "Jeg tenker på et tall mellom 1 og 100, gjett hvilket:"
	read valg
	
	if [ "$valg" = "" ]; then
		echo " Sett inn et tall."
	elif [ "$valg" = "$skjult" ]; then
		echo -e "\aJippi!! $valg Er rett svar!"
	elif [ "$valg" = 0 ]; then
		echo -e "\aDu har valgt å avslutte spillet, tallet var $skjult"
		exit
	elif [ "$skjult" -gt "$valg" ]; then
        echo "Det skjulte tallet er høyere, prøv igjen."
    else
        echo "Det skjulte tallet er lavere, prøv igjen."
    fi
done

read -p "Vil du spille mer? " -n 1 -r
			if [[ $REPLY =~ ^[Yy]$ ]]; then
			bash ./oppg1test.sh
			else
				exit
			fi

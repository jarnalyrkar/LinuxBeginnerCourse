#!/bin/bash
# Program generates two random integers
# and decides which is larger and smaller
# Lesson 8b, Innføring i Linux

clear
#Randomization
#tall1=$RANDOM
#tall2=$RANDOM

#input from user:
read -p "Enter a number: " num1
read -p "Enter another number: " num2

printf "You entered $num1 and $num2.\n"

if [[ $num1 -lt $num2 ]]; then
	printf "Det minste tallet er $num1\n"
	printf "Det største tallet er $num2\n"
	else
		printf "Det minste tallet er $num2\n"
		printf "Det største tallet er $num1\n"
fi

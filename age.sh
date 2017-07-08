#!/bin/bash
# Program decides agegroup from either a random number generator, or from input
# Lesson 8, Innføring i Linux
clear

# Picks random number
#alder=$((1+RANDOM%100))

# Gets user input
read -p "Enter your age: " age

printf "Age: $age years\n"
printf "Agegroup: "
if [[ $age -le 16 ]]; then
	printf "Child\n"
	elif [[ $age -gt 16 && $age -lt 25 ]]; then
		printf "Adolescent\n"
	elif [[ $age -le 66 ]]; then
		printf "Adult\n"
	else printf "Elderly\n"
fi



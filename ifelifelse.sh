#!/bin/bash
# if/ elif/ else exercise
# Program decides what sort of number you are entering.
# Lesson 8b, Innføring i Linux

# Randomization
#num=$RANDOM

read -p "Enter an integer: " num

echo $num

if [[ $num -lt 0 ]]; then
	echo "The number is negative"
	elif [[ $num -eq 0 ]]; then
		echo "The number is zero"
	elif [[ $num -lt 10 ]]; then
		echo "The number is less than ten"
	elif [[ $num -lt 100 ]]; then
		echo "The number is less than one hundred"
	elif [[ $num -lt 1000 ]]; then
		echo "The number is less than one thousand"
	elif [[ $num -lt 10000 ]]; then
		echo "The number is less than ten thousand"
	else echo "The number is larger than ten thousand"
fi


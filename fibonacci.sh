#!/bin/bash
# Program som lager fibonacci-sekvens opp til 1000

tall1=0
tall2=1
tall3=1
echo "0"
echo "1"
while [[ tall3 -lt 1000 ]]; do
	echo $tall3
	tall1=$tall2
	tall2=$tall3
	tall3=$((tall1+tall2))
done

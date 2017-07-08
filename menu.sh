#!/bin/bash
# read-menu
while [[ $REPLY != 0 ]]; do
	clear
	cat <<- END
		Please Select:
		1. Display System information
		2. Display Disk Space
		3. Display Home Space Utilization
		0. Quit
END
read -p "Enter Selection [0-3] > "
if [[ $REPLY =~ ^[0-3]$ ]]; then
	if [[ $REPLY == 0 ]]; then
	   echo "Program terminated."
		 exit
	fi
	if [[ $REPLY == 1 ]]; then
		echo "Hostname: $HOSTNAME"
		uptime
		exit
	fi
	if [[ $REPLY == 2 ]]; then
	   df -h
		 exit
	fi
	if [[ $REPLY == 3 ]]; then
		if [[ $(id -u) -eq 0 ]]; then
			echo "Home Space Utilization (All users)"
			du -sh /home/*
		else
			echo "Home Space Utilization ($USER)"
			du -sh $HOME
		fi
		exit
	fi
else
	echo "Invalid entry." >&2
	exit
fi
done

#!/bin/sh


battery=$(acpi -V | awk 'NR==1 {print $4}' | sed 's/%,//')
status="$(acpi -V | awk 'NR==1 {print $3}' | sed 's/,//')"
remaining=$(acpi -V | awk 'NR==1 {print $5}')



if [ $status = "Not" ]
then
	echo "🔋 Charged!"
elif [ $status = "Charging" ]
then
	echo "⚡$battery%"
elif [ $status = "Discharging" ]
then
	echo "🔋 $battery%, $remaining"
elif [ $status = "Discharing" -a $battery -lt 20 ] 
then
	echo "🔴 $battery%, $remaining"
	
fi


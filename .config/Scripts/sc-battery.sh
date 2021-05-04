#!/bin/sh


battery=$(acpi -V | awk 'NR==1 {print $4}' | sed 's/%,//')
remaining=$(acpi -V | awk 'NR==1 {print $5}')
if [ $battery -lt 20 ] 
then
	echo "🔴 $battery%, $remaining"

else 
	echo "🔋 $battery%, $remaining"
fi


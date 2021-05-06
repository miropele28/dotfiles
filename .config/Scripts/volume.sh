#!/bin/sh



	volume=$(pamixer --get-volume)



if [ $volume -lt 34 ]
then
	echo "🔈 $volume%"

elif [ $volume -gt 34 -a $volume -lt 60 ]
then 
	echo "🔉 $volume%"

else
	echo "🔊 $volume%"
fi

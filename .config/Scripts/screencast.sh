#!/bin/sh


if [ -f $HOME/output.mkv ] 
then
	n=1
	while [ -f $HOME/output_$n.mkv ]
	do
		n=$(n+1)
	done
	filename="$HOME/output_$n.mkv"
else
	filename="$HOME/output.mkv"
fi

ffmpeg \
-f x11grab \
-s $(xdpyinfo | grep dimensions | awk '{print $2}') \
-i :0.0 \
-c:v libx264 $filename

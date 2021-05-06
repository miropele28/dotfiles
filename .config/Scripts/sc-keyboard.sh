#!/bin/sh

layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ $layout = 'sk' ]
then
	setxkbmap us
	echo "⌨️ US"
else
	setxkbmap sk -variant qwerty
	echo "⌨️ SK"
fi

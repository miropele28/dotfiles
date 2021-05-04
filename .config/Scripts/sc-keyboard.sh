#!/bin/sh

layout=$(setxkbmap -query | grep layout | awk '{print $2}')

if [ $layout = 'us' ]
then
	setxkbmap sk -variant qwerty
	echo "⌨️ SK"
else
	setxkbmap us
	echo "⌨️ US"
fi

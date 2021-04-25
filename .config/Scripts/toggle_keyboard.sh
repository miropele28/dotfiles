#!/bin/sh

layout=$(setxkbmap -query | grep layout | awk '{print $2}')
echo $layout

if [ $layout = 'us' ]
then
	setxkbmap sk -variant qwerty
else
	setxkbmap us
fi

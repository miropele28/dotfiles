#!/bin/sh

layout=$(setxkbmap -query | grep layout | awk '{print $2}')
echo $layout

if [ $layout = 'us' ]
then
	setxkbmap sk
else
	setxkbmap us
fi

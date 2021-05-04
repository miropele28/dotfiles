#!/bin/sh

ram=$(free -h | awk '/^Mem/ {print $3"/"$2}')
icon=🧠
echo "$icon $ram"

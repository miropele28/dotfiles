#!/bin/sh

weather=$(curl -s wttr.in/?format=%c+%t)

echo $weather

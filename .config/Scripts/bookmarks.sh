#!/bin/sh

urls="
Matika http://web.tuke.sk/fei-km/predmet/matematika-1-nov%C3%A1
Luke_Smith_YT https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA
Instagram https://www.instagram.com/
Facebook https://www.facebook.com/
Vultr https://my.vultr.com/
Epik https://www.epik.com/
"

echo "$urls" | dmenu -i -l 20 | awk '{print $2}' | xargs -r brave

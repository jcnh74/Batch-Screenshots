#!/bin/bash

count=0
if [ ! -d .screenshots/ ]; then
  mkdir -p .screenshots/;
fi
for d in "$1"*; do
	pngs=()
	for f in "$d"/*.png; do
		pngs+=("$f")
	done
	
	if (("${#pngs[@]}" >= 3))
	then
		echo 'processing directory: '$d

		for (( i=1; i<=3; i++ ))
		do
		   echo $i " : " ${pngs[$i-1]}
		done
		#echo 'this is the count: '$count

		convert \
			./screen_shot.png \
			\( "${pngs[0]}" -resize 330x330 \) -geometry +375+887 -composite \
			\( "${pngs[1]}" -resize 330x330 \) -geometry +8+617 -composite \
			\( "${pngs[2]}" -resize 330x330 \) -geometry +375+341 -composite \
			./screenshots/screenshot00$count.png

		((count++))
	fi
	
done
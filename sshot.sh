#!/bin/bash

# create a count for sequential name
count=0

# add temp directory if it doesn't already exist
if [ ! -d .screenshots/ ]; then
  mkdir -p .screenshots/;
fi

# iterate through included directories
for d in "$1"*; do

	# create empty array to store pngs
	pngs=()

	# add only pngs to the array
	for f in "$d"/*.png; do
		pngs+=("$f")
	done
	
	# only itereate through pngs if there are more than 3
	if (("${#pngs[@]}" >= 3))
	then
		echo 'processing directory: '$d

		# for display purposes only
		for (( i=1; i<=3; i++ ))
		do
		   echo $i " : " ${pngs[$i-1]}
		done
		#echo 'this is the count: '$count

		# ImageMagick part, select the first three and add to included empty screen_shot.png
		convert \
			./screen_shot.png \
			\( "${pngs[0]}" -resize 330x330 \) -geometry +375+887 -composite \
			\( "${pngs[1]}" -resize 330x330 \) -geometry +8+617 -composite \
			\( "${pngs[2]}" -resize 330x330 \) -geometry +375+341 -composite \
			./screenshots/screenshot00$count.png

		# increment count
		((count++))
	fi
	
done
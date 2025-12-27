#!/bin/sh
cd icons/scalable
for i in 128 64 32 16; do
	echo "-- ${i}x${i}"
	for j in actions apps categories devices emblems emotes mimetypes places status; do
		mkdir -p ../${i}x${i}/${j}
		echo $j > ../${i}x${i}/${j}/README.txt
	done
	find . -name "*.svg" | while read a; do
		echo "$a"
		rsvg-convert --height=$i -o ../${i}x${i}/`echo $a | cut -d. -f2`.png $a
	done
done

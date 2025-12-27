#!/bin/sh
cd icons/scalable

TYPES="actions apps categories devices emblems emotes mimetypes places status"
SIZES="128 64 32 16"

D=""

echo "[Icon Theme]" > ../index.theme
echo "Name=MDE" >> ../index.theme
echo "Inherits=hicolor" >> ../index.theme
for i in scalable $SIZES; do
	for j in $TYPES; do
		if [ "x$D" = "x" ]; then
			D="$i/$j"
		else
			D="$D,$i/$j"
		fi
	done
done
echo "Directories=$D" >> ../index.theme
echo "" >> ../index.theme

for i in scalable $SIZES; do
	for j in $TYPES; do
		echo "[$i/$j]" >> ../index.theme

		C="`echo $j | sed -E 's/^(.).*$/\1/' | tr "[:lower:]" "[:upper:]"``echo $j | sed -E 's/^.//'`"

		if [ "$j" = "apps" ]; then
			C="Applications"
		elif [ "$j" = "mimetypes" ]; then
			C="MimeTypes"
		fi
		echo "Context=$C" >> ../index.theme

		if [ "$i" = "scalable" ]; then
			echo "Size=64" >> ../index.theme
			echo "MinSize=8" >> ../index.theme
			echo "MaxSize=512" >> ../index.theme
			echo "Type=Scalable" >> ../index.theme
		else
			echo "Size=`echo $i | cut -dx -f1`" >> ../index.theme
			echo "Type=Fixed" >> ../index.theme
		fi
		echo "" >> ../index.theme
	done
done

for i in $SIZES; do
	echo "-- ${i}x${i}"
	for j in $TYPES; do
		mkdir -p ../${i}x${i}/${j}
		echo $j > ../${i}x${i}/${j}/README.txt
	done
	if [ ! "$i" = "128" -a ! -f "../${i}x${i}/apps/mde.png" ]; then
		convert ../128x128/apps/mde.png -scale x${i} ../${i}x${i}/apps/mde.png
	fi
	find . -name "*.svg" | while read a; do
		echo "$a"
		rsvg-convert --height=$i -o ../${i}x${i}/`echo $a | cut -d. -f2`.png $a
	done
done

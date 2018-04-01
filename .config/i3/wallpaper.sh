#!/bin/bash

#for filename in ~/Pictures/Wallpapers/*; do
#	wal -i "$filename"
#	sleep 15m
#done

while true; do
	wallpaper=$(ls ~/Pictures/Wallpapers/ | sort -R | tail -1)
	wal -i "/home/fabian/Pictures/Wallpapers/$wallpaper"
	# Uncomment to use as gtk theme
	#wal -g
	sleep 15m
done

#!/bin/bash

for album in *.zip ;
do
	album_name=${album::-4} ;
	mkdir "$album_name" ;
	unzip "$album" -d "$album_name" ;
	mv "$album_name" ~/Music ;
	echo "extracted $album" ;
done

#!/usr/bin/bash

ls *.png | sort -n > ./filelist.txt
convert -append @filelist.txt sildes.png
convert ./sildes.png -density 72 -page $(identify -format '%wx%h' sildes.png) ./sildes.pdf

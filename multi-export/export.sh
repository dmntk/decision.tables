#!/usr/bin/env bash

rm -rf *.pdf

ls -f *.html | while read line
do
  file=${line%.*}
  html2pdf "$file.html" "$file.pdf"
done
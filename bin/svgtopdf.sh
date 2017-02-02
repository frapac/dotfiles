#!/bin/bash

for svgfile in *.svg;
do
  inkscape --export-pdf=${svgfile%%.*}.pdf $svgfile
done

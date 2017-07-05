#!/bin/bash
#...Get the path\name of the markdown file...
TEXFILE=$1
#--echo $TEXFILE
TEXDIR=$(dirname $TEXFILE)
TEXNAME=$(basename $TEXFILE .tex)
#--echo $TEXDIR
#--echo $TEXNAME
#...Change direction to the markdown file...
cd $TEXDIR
#--echo $PWD
#...Compile the tex file using pdflatex...
pdflatex $TEXNAME
bibtex $TEXNAME
pdflatex $TEXNAME
pdflatex $TEXNAME
# ...Delete the temporary files...
rm $TEXNAME.aux
rm $TEXNAME.bbl
rm $TEXNAME.blg
rm $TEXNAME.out

#!/bin/bash
# ...Get the path\name of the markdown file...
echo "Hello! Please drag your .md file below..."
read MDFILE
MDDIR=$(dirname $MDFILE)
MDNAME=$(basename $MDFILE .md)
# ...Change direction to the markdown file...
cd $MDDIR
# ...Modify the markdown file...
python <(curl -s https://raw.githubusercontent.com/someonedomath/MarTex/master/mdTreater.py) $MDFILE $MDDIR
#python mdTreater.py $MDFILE $MDDIR
# ...Translate the markdown file into tex file using pandoc...
pandoc -o tempTex.tex tempMarkdown.md
# ...Modify the tex file...
python <(curl -s https://raw.githubusercontent.com/someomedomath/MarTex/master/texTreater.py) $MDDIR
#python texTreater.py $MDDIR
# ...Compile the tex file using pdflatex...
pdflatex tempTex 
bibtex tempTex 
pdflatex tempTex 
pdflatex tempTex
# ...Delete the temporary files...
rm tempTex.aux
rm tempTex.bbl
rm tempTex.blg
rm tempTex.out
rm tempbib.bib
rm tempMarkdown.md
# ...Change the names of output files to be consistent with the markdown file...
mv tempTex.pdf $MDNAME.pdf
mv tempTex.log $MDNAME.log
mv tempTex.tex $MDNAME.tex
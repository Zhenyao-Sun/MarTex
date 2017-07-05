#!/bin/bash
# ...Get the path\name of the markdown file...
MDFILE=$1
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
python <(curl -s https://raw.githubusercontent.com/someonedomath/MarTex/master/texTreater.py) $MDDIR
#python texTreater.py $MDDIR
#...Remove the temp md file and change name of the temp tex file
rm tempMarkdown.md
mv tempTex.tex $MDNAME.tex
#!/bin/bash
MDFILE=$1
MDDIR=$(dirname $MDFILE)
MDNAME=$(basename $MDFILE .md)
cd $MDDIR
echo $MDDIR
for f in *.md; do (cat "${f}"; echo) >> MarTexOutPut.md; done
MarPdf MarTexOutPut.md
rm MarTexOutPut.md
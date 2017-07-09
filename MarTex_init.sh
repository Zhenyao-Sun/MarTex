#!/bin/bash
MarTex()
{
	bash <(curl -s https://raw.githubusercontent.com/someonedomath/MarTex/master/MarTex.sh) $1
}
export -f MarTex
TexPdf()
{
	bash <(curl -s https://raw.githubusercontent.com/someonedomath/MarTex/master/TexPdf.sh) $1
}
export -f TexPdf
MarPdf()
{
	bash <(curl -s https://raw.githubusercontent.com/someonedomath/MarTex/master/MarPdf.sh) $1
}
export -f MarPdf
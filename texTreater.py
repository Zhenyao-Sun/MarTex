import codecs
import sys
mdDir=sys.argv[1]
fileReader=codecs.open(mdDir+"/tempTex.tex","r","utf-8")
fileContent=fileReader.read()
fileReader.close()
newFileContent=fileContent.replace("\\begin{verbatim}","")
newFileContent=newFileContent.replace("\\end{verbatim}","")
newFileContent=newFileContent.replace("\\tightlist","")
newFileContent=newFileContent.replace("{[}","[")
newFileContent=newFileContent.replace("{]}","]")
newFileContent="\n".join([line for line in newFileContent.split('\n') if line.strip() != ''])
fileWriter=codecs.open(mdDir+"/tempTex.tex","w","utf-8")
fileWriter.write(newFileContent)
fileWriter.close()

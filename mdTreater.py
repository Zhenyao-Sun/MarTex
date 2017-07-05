import codecs
import sys
mdFile=sys.argv[1]
mdDir=sys.argv[2]
fileReader=codecs.open(mdFile,"r","utf-8")
fileContent=fileReader.read()
fileReader.close()
newFileContent=fileContent.replace("```tex","```")
newFileContent=newFileContent.replace("\\mylabel","\\label")
fileWriter=codecs.open(mdDir+"//tempMarkdown.md","w","utf-8")
fileWriter.write(newFileContent)
fileWriter.close()

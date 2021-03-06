# MarTex简介

若要使用 MarTex, 你需要准备如下的工具:

- 一台 Mac 电脑. 
- 在 Mac 上安装好 [Wget](https://en.wikipedia.org/wiki/Wget), [Pandoc](http://pandoc.org) 和 [Mactex](https://www.tug.org/mactex/).
- 用 MarkDown 写好一篇学术文章. 这里安利下 [Typora](https://typora.io), 是一款很好用的 MarkDown 编辑器.

如果你从没有用过 MarTex, 可以先下载 [example.md](https://raw.githubusercontent.com/someonedomath/MarTex/master/example.md), 作为第一次使用的实验对象. 
你可以在 .md 文件的任意部位插入 latex 指令, 方法是使用 "[MarkDown 代码块](http://xianbai.me/learn-md/article/extension/code-blocks-and-highlighting.html)".
这是因为 MarTex 在转换你的 .md 文件时候, 会把所有代码块中的文本, 识别为 latex 指令.

接下来可以使用 MarTex 了! 

先在terminal中用下面的指令来初始化程序

```bash
wget https://raw.githubusercontent.com/someonedomath/MarTex/master/MarTex_init.sh && source MarTex_init.sh && rm MarTex_init.sh
```

注意MarTex 是一个在线软件，需要联网才能使用

接下来 cd 到你存贮 md 文件的文件夹中

使用下面的指令一次把该md所在的文件夹中，所有md文件，先连在一起，然后编译为pdf，这个功能对于写书来说非常实用

```bash
MarPdfAll YourMarkDownFile
```

也可以使用下面的指令将一个 markdown 文件转化为一个 tex 文件

```bash
MarTex YourMardkdownFile
```

或使用下面的指令将一个  tex 文件编译为 pdf 文件

```tex
TexPdf YourTexFile
```

或使用下面的指令将一个 markdown 文件先运行 MarTex 再运行 TexPdf

```bash
MarPdf YourTexFile
```

每次使用都需要初始化程序，使用后不会留下任何痕迹，不想用的话也无需卸载。
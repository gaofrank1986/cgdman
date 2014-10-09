主文档文件cgd_book.lyx依赖本地cgd_book.layout
lyx模板cgd_book.layout文件依赖cgd_book.cls
cgd_book.cls依赖cgdfonts.def

cgd_book.cls中定义了renewcommand{\maketitle}，标题页今后更新仅修改maketitle的定义体即可。
cgd_book.lyx中已经包含所有常用lyx样式，若为新内容赋予样式，可以通过拷贝已有样式的内容再替换文字即可。

lyx文档生成pdf文件： File->Export->Pdf(pdflatex)



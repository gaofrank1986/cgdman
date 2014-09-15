cgdman
======

LaTeX and LyX templates for user manual written in English and Chinese languages.

Lyx
======
打开cgd_book.lyx
1. 查看ctrl+R 
2. 导出pdf文件 File->Export->PDF (pdflatex)
可以直接编辑cgd_book.lyx文件，cgd_book.pdf导出的pdf结果。
依赖本地cgd_book.layout以及cgd_book.cls和cgdfonts.def等模板库。
在lyx 2.1.1中测试通过，在更低版本的lyx中，需要将cgd_book.lyx文件中的\lyxformat 474指令的版本数字改小。

TODO
---------
lyx模板的标题页
字体以及列表
LaTex Premble完善
subequations环境包装
\cal等其他指令包装

# ZUST-毕业论文LaTex模板使用说明

### Copyright©

This project is accomplished by Wang Yuqi.

For further support, contact:

address: a4-503

email: 222009252029@zust.edu.cn

telephone/wechat:15645691357

### 1. 文件说明

![image-20220712131516658](C:\Users\14453\AppData\Roaming\Typora\typora-user-images\image-20220712131516658.png)

1）`figure`文件夹用于存放文章中的所有图片，建议将图片存为pdf等无损格式；

2）`gbt7714.sty` 是国标7714要求的参考文献格式宏包；

3）`gbt7714-numerical.bst` 是参考文献的引用格式文档；

4）`ref.bib` 是参考文献文档；

5）`titlepage.pdf` 需要从学校给定的`封面.docx` 文件中导出，作为论文的封面页；

6）`ZUST_Thesis.cls` 是主论文的格式文档；

7）`zust_thesis.tex` 是主论文的`.tex`文件，可根据需要改名。

### 2. 章节构造

#### 2.1 标题页

使用`封面.docx`文件，编辑好所需信息后，导出为`titlepage.pdf`即可。

#### 2.2 主文档

1）所有格式已定义完毕，可按照文档内注释直接使用；

2）章标题使用`\section{}`，节标题使用`\subsection{}`，小节标题使用`\subsubsection{}`，不建议继续加深标题（目录按照要求只显示三级标题）；

3）图、子图以及表格的示例已经在主文档中给出：

```latex
%图：
\begin{figure}[!htb] % !表示强制位置；h表示here；t表示top；b表示bottom
	\centering       % 居中
	\includegraphics[width=0.8\linewidth]{figure/image.pdf} % 使用width调节图片宽度，0.8\linewidth表示图片为0.8倍行宽；图片路径为figure/图片
	\caption{示意图}  % 图标题
	\label{fig1}	 % 引用标签
\end{figure}
```

```latex
%子图：
\begin{figure}[!htb]
	\centering
	\subfigure[子图1标题]{
		\includegraphics[width=0.3\linewidth]{figure/mathtype2.jpg}}
	\subfigure[子图2标题]{
		\includegraphics[width=0.3\linewidth]{figure/mathtype2.jpg}}
	\caption{多图示意}
	\label{fig_subexample}
\end{figure}
%这里有一点需要注意，由于中文文档性质，子图内插入\label命令会导致问题，因此引用图中的某一个子图时，无法精确引用到具体的子图，需要手动补充，例如：
%如图\ref{fig_subexample}a所示
```

```latex
%表：
\begin{table}[h]
	\small % 表格字号
	\setlength{\abovecaptionskip}{0em}  % 标题距离上文距离
	\setlength{\belowcaptionskip}{0.5em}% 标题距离下文距离
	\renewcommand\arraystretch{1.5}     % 表格行距
	\setlength\tabcolsep{3pt}           % 列间距
	\centering
	\caption{示例表}
	\label{tab_example}
	\begin{tabular}{m{4cm}<{\centering}m{3cm}<{\centering}m{2cm}<{\centering}} 
	       % ↑指定单元格宽度↑；\raggedright靠左，\centering居中，\raggedleft靠右
		\toprule
		表格内内容选单倍行距，在“格式－段落”的段前段后选3磅&总的原则是美观&第一行\\
		\midrule
		在“表格－表格属性”中选居中&$\pm\Omega_i$&$\mp\Omega_i$\\
		第一列&$\pm\Omega_i$&$\mp\Omega_i$\\
		\bottomrule
	\end{tabular}
\end{table}
```

### 3. 参考文献及引用

#### 3.1 参考文献.bib文档

`ref.bib`文件中已经给出了常用的参考文献类型的示例

1）书籍[M]：

```latex
@book{深度学习,
	title={Deep Learning},
	author={Ian Goodfellow and Yoshua Bengio and Aaron Courville},
	publisher={MIT Press},
	year={2016},
	address={MA},
}

@book{西瓜书,
	title={机器学习},
	author={周志华},
	publisher={清华大学出版社},
	year={2015},
	address={北京},
}
```

2）期刊文章[J]：

```latex
@article{DNN,
	author={Sze, Vivienne and Chen, Yu-Hsin and Yang, Tien-Ju and Emer, Joel S.},
	journal={Proceedings of the IEEE}, 
	title={Efficient Processing of Deep Neural Networks: A Tutorial and Survey}, 
	year={2017},
	volume={105},
	number={12},
	pages={2295-2329},
}
```

3）会议文章[C]：注意此处的会议名不要使用`booktitle`，需要使用`organization`

```latex
@proceedings{resnet,
	author    = {Kaiming He and Xiangyu Zhang and Shaoqing Ren and Jian Sun},
	title     = {Deep Residual Learning for Image Recognition},
	year      = {2016},
	pages     = {770--778},
	organization= {IEEE/CVF Conference on Computer Vision and Pattern Recognition}
}
```

4）arxiv：需要加上`mark={EB/OL}`命令

```
@misc{CNN,
	mark = {EB/OL}, 
	author = {Isma Hadji and Richard P. Wildes},
	title  = {What Do We Understand About Convolutional Networks},
	year      = {2018},
	note = {ArXiv preprint ArXiv: 1803.08834}
}
```

以下代码是主文档内调用`ref.bib`文件的命令，行距可按需修改，1.25为默认行距（maybe）

```latex
\setlength{\bibsep}{0em} % 修改条目间的行距
\bibliographystyle{gbt7714-numerical}
\begin{spacing}{1.25} % 修改条目内的行距
	\bibliography{ref.bib}
\end{spacing}
```

#### 3.2 引用

默认`\cite{}`命令为右上角引用，同时引用多个参考文献可在同一`\cite{}`命令内；

如果需要正文大小的引用，文档中定义了`\ncite{}`命令。

主文档中已有相关示例。

### 4. 公式字体的说明

由于latex没有成套的用于公式的Times New Roman字体，目前只有两种替代方案，一种是主文档导言区给出的`newtxmath`宏包：

```latex
\usepackage{newtxtext}
\usepackage{newtxmath}
```

该宏包能够将所有字体替换为Times New Roman字体，但角标位置、大小等距离设置与公式编辑器仍有细微差距，使用该宏包的原因是其对于粗斜体英文字母的支持较好，可以用其表示向量；

如果文章中不含粗斜体，更推荐使用`mathptmx`宏包：

```latex
\usepackage{mathptmx}
```

但该宏包处理粗斜体英文字母时会出现重影。

### 5. 其他

本文档说明提供给有latex基础的使用者，旨在帮助大家节省文档的排版时间，尤其是参考文献的排序编辑时间。该模板已全部按照官方给出的行距、字体、图表、公式等格式要求进行编辑，基本不需要使用者进行二次修改。当然，`ZUST_Thesis.cls`文件中也给出了详细的注释，可以按照需求自行更改。如在使用过程中发现问题，可以联系本人进行修改确认。
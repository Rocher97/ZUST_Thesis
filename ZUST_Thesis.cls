%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               文档声明                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ZUST_Thesis}
\LoadClass[UTF8,a4paper,AutoFakeBold,scheme=chinese,openany,12pt]{ctexart}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               宏包导入                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------- 图片宏包 ----------------%
\RequirePackage{graphicx}                % 图片包
\RequirePackage{subfigure}               % 子图包
\RequirePackage{booktabs}
%--------------- 数学宏包 ----------------%
\RequirePackage{amsmath}                 % 数学
\RequirePackage{amsfonts}		         % 数学字体
\RequirePackage{amssymb}		         % 数学符号
\RequirePackage{algorithm,algorithmic}   % 算法包
%\RequirePackage{XCharter}



%\RequirePackage[lite,subscriptcorrection,slantedGreek,nofontinfo]{mtpro2}
%\RequirePackage{mathptmx}
%\RequirePackage{bm}
\RequirePackage{xcolor}

\RequirePackage{listings}
\RequirePackage{setspace}
\RequirePackage{ulem}
\RequirePackage{gbt7714}
\RequirePackage{makecell}









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               中文排版                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               字体设置                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{fontspec}                      % 成套的英文字体
\RequirePackage{xeCJK}                         % 中文字体
\RequirePackage{ctex}

%----------------英文字体------------------
\setmainfont{Times New Roman}				   % 设置正文字体
\setsansfont{Trebuchet MS}                     % 设置无衬线字体
\setmonofont{Courier New}                      % 设置打字机字体
%----------------中文字体------------------
\setCJKmainfont %[BoldFont={Microsoft YaHei},    % 设置粗体
				%ItalicFont={KaiTi},             % 设置斜体
				%BoldItalicFont={HGXBS_CNKI},]   % 设置粗斜体
				{SimSun}[AutoFakeBold={2}]       % 设置主字体
\setsansfont{Trebuchet MS}
\setmonofont{Courier New}
%--------------定义字体命令-----------------
\newfontfamily{\tnr}{Times New Roman}          % Times New Roman
\setCJKfamilyfont{songti}{SimSun}[AutoFakeBold={2}]
\renewcommand{\songti}{\CJKfamily{songti}}     % 宋体
\setCJKfamilyfont{heiti}{SimHei}[AutoFakeBold={2}]
\renewcommand{\heiti}{\CJKfamily{heiti}}       % 黑体
\setCJKfamilyfont{kaiti}{KaiTi}[AutoFakeBold={2}]
\newcommand{\kaiti}{\CJKfamily{kaiti}}         % 小标宋
\setCJKfamilyfont{fs}{FangSong}[AutoFakeBold={2}]
\newcommand{\fs}{\CJKfamily{fs}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               页面布局                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------------- 页边距调整 ----------------%
\RequirePackage{geometry}                      % 页边距调整包
\geometry{a4paper,                             % 纸张大小
		  left=3.18cm,right=3.18cm,
		  top=2.54cm,bottom=2.54cm}            % 边距
	  
%-------------- 页边注设置 ----------------%
%\RequirePackage{marginnote}
%\renewcommand*{\marginfont}{\color{red}\tiny}
%\setlength{\marginparwidth}{4cm}               % 页边文字区域宽度
%\setlength{\marginparsep}{1em}                 % 边注与文字距离

%-------------- 段落 设置 ----------------%
\setlength{\parindent}{2em}                    % 段前空格
% \setlength{\parskip}{1em}                      % 段间距
\linespread{1.5}

%-------------- 标题 设置 ----------------%
\RequirePackage{titlesec}
        
\setcounter{section}{0}                        % 章节计数器置零
\renewcommand{\thesection}                     % 章节计数格式
			 {第\arabic{section}章}   % 数字编号
\titleformat{\section}                         % 章节标题格式设置
			{\centering\zihao{3}\bfseries\heiti}     % 对齐、字号、字体
			{\bfseries \thesection}                      % 选取计数器
			{1em}{}                            % 编号与标题距离

\setcounter{subsection}{0}                     
\renewcommand{\thesubsection}                  
			 {\arabic{section}.
			  \arabic{subsection}}        
\titleformat{\subsection}                      
			{\raggedright\zihao{4}\heiti}           
			{\thesubsection}                   
			{1em}{}    

\setcounter{subsubsection}{0}                     
\renewcommand{\thesubsubsection}                  
			 {\arabic{section}.
			  \arabic{subsection}.
			  \arabic{subsubsection}}        
\titleformat{\subsubsection}                      
  			{\raggedright\zihao{-4}\heiti}           
			{\thesubsubsection}                   
			{1em}{}                         

\titlespacing{\subsection}{0pt}{0.5em}{0.5em}   		

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               标签设置                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------- 链接设置 ----------------%
\RequirePackage{url}
\RequirePackage{hyperref}
\hypersetup{hidelinks,
	unicode=false,
	hyperfootnotes=true,
	hyperindex=true,
	colorlinks=false,
	breaklinks=true}

%--------------- 编号设置 ----------------%
\RequirePackage[small]{caption2}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand{\captionlabeldelim}{~~}
\renewcommand\theequation{\arabic{section}-\arabic{equation}}
\renewcommand\thetable{\arabic{section}-\arabic{table}}
\renewcommand\thefigure{\arabic{section}-\arabic{figure}}
%\renewcommand\thesubfigure{\alph{subfigure}}
%\renewcommand\thesubfigure{\alph{subfigure}}






%--------------- 目录设置 ----------------%
\RequirePackage{titletoc}
\renewcommand{\contentsname}{目\qquad 录}
\titlecontents{section}
			  [0pt]                            % 缩进
			  {}                               % 章间垂直距离\vspace{length}
			  {\thecontentslabel\hskip.5em}    % 序号与章名间隔
			  {}{\titlerule*[.5pc]{\bfseries..}% 标题与页码之间的填充线
			  	\hspace{-8pt}\bfseries\contentspage}
\titlecontents{subsection}
		      [2em]{}
			  {\thecontentslabel\hskip.5em}{}
			  {\titlerule*[.5pc]{..}\hspace{-9pt}\contentspage}
\titlecontents{subsubsection}
			  [4em]{}
			  {\thecontentslabel\hskip.5em}{}
			  {\titlerule*[0.5pc]{..}\hspace{-9pt}\contentspage}


%--------------- 列举设置 ----------------%
\RequirePackage{enumitem}
\setenumerate[1]{itemsep=0pt,                  % 条目之间的距离
				 partopsep=0pt,                % 条目与下面段落的距离
				 parsep=0pt,                   % 条目内段间距离
				 topsep=0pt}                   % 列表与上文距离
\setitemize[1]{itemsep=0pt,
	           partopsep=0pt,
	           parsep=0pt,
	           topsep=0pt}
\setdescription[1]{itemsep=0pt,
	               partopsep=0pt,
	               parsep=\parskip,
	               topsep=0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               其他设置                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------------- 插入代码 -----------------%
\lstset{basicstyle=\tt,
	    numbers=left, 
	    numberstyle=\small,
        numbersep=2em,
        xleftmargin=3em,
        xrightmargin=3em,}
%
\newcommand{\ncite}[1]{\setcitestyle{square,numbers}\cite{#1}\setcitestyle{square,super}}
%\renewcommand{\cite}[1]{\textsuperscript{\cite{#1}}}
%\newcommand{\upcite}[1]{}  % 引用格式为右上角标，使用\upcite{}命令

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%               封面设置                %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{authblk}
\RequirePackage{pdfpages}
%--------------- 生成封面 -----------------%
\renewcommand{\maketitle}{
\includepdf[pages={1,2,3,4,5}]{titlepage.pdf}
}




%----------------- 页面设置 -------------------%
\RequirePackage{fancyhdr}                      % 自定义页眉包
\geometry{a4paper,left=1.25in,right=1.25in,
	top=1in,bottom=1in}
\fancypagestyle{main}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}\thesection\quad\leftmark}              % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}
\pagestyle{main}

\fancypagestyle{abstractch}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}摘\qquad 要}              % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}

\fancypagestyle{abstracten}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}ABSTRACT}                     % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}

\fancypagestyle{tabofcontent}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}目\qquad 录}                     % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}


\fancypagestyle{appendix}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}附\qquad 录}                     % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}



\fancypagestyle{acknowledgement}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}致\qquad 谢}                     % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}

\fancypagestyle{achievement}{
	\setlength{\oddsidemargin}{6mm}
	%\setlength{\headheight}{9pt}
	\setlength{\voffset}{2.5mm}
	\setlength{\headsep}{4.5mm}
	\setlength{\marginparsep}{0pt}
	\setlength{\marginparwidth}{0pt}
	\setlength{\footskip}{9mm}
	\lhead{\zihao{-5}\@title}					   % 左页眉
	\rhead{\zihao{-5}攻读学位期间参加的科研项目和成果}                     % 右页眉
	\cfoot{\zihao{-5}\thepage}                               % 中央页脚
	\renewcommand{\headrulewidth}{0.5pt}           % 页眉线宽度
	\renewcommand{\footrulewidth}{0pt}             % 页脚线宽度
}




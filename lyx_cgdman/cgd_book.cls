%%%===================================================%%%
%%%                This is cgd_book.cls               %%%
%%%        For writting the guide book for software   %%%
%%%          Copyright by http://www.latexstudio.net  %%%
%%%===================================================%%%
%%%  revised by LaTeXStudio on Sep. 5, 2014

%% This class is based on the class "art" with options a4paper, oneside and 12pt.
%% The draft mode is defined, in which the package refcheck will take effect.
%% No more options are allowed.

\NeedsTeXFormat{LaTeX2e}[2014/05/01]
\ProvidesClass{cgd_book}[2014/09/04 V0.5 cgd_book guide class]


\ExecuteOptions{a4paper,oneside,12pt}
\ProcessOptions\relax

\LoadClass[a4paper,oneside,12pt]{book}


\RequirePackage{amsmath,amssymb,amsfonts}

%\RequirePackage{showframe}
\RequirePackage[a4paper,left=5.5cm, marginparwidth=3.5cm,right=2cm,bottom=1in]{geometry}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage[explicit]{titlesec}
\RequirePackage{xcolor,array}
\RequirePackage{paralist,booktabs,ifxetex,changepage}
\RequirePackage{graphicx,url}

%%------------Fonts define------------------------------
\input{cgdfonts.def}

\definecolor{mybluei}{RGB}{88,147,119}
\definecolor{myblueii}{RGB}{88,147,119}
\definecolor{mygray}{RGB}{230,230,230}

\renewcommand\chaptertitlename{CHAPTER}%

% Maketitle command, modified 

\def \productTitle#1{\gdef\@productTitle{#1}}
\def \productSubtitle#1{\gdef\@productSubtitle{#1}}
\def \productVersion#1{\gdef\@productVersion{#1}}
\def \company#1{\gdef\@company{#1}}

\newcommand{\FilenameType}{\emph}
\newcommand{\IdentifierType}[1]{\text{#1}}
\setcounter{secnumdepth}{3}

\renewcommand{\maketitle}{% called outside
\begin{titlepage}
\raggedleft
\null
\vskip 4em
\SectionFont{\fontsize{40}{80}\selectfont  {\@productTitle}}

\bigskip
{\fontsize{25}{80}\selectfont  {\@productSubtitle} }

\bigskip
{\Large  {\@productVersion} }

\bigskip
{\fontsize{25}{80}\selectfont   {\@title} }

\vfill
\centerline{ {\@company}}
\end{titlepage}}

\RequirePackage{listings}
\lstset{
  frame=tb,
  commentstyle=\color{red!50!green!50!blue!50},
  keywordstyle=\color{mybluei}\bfseries,
  backgroundcolor=\color{mygray},
  stringstyle=\ttfamily,
  basicstyle=\footnotesize,
  breaklines=true, 
  breakautoindent=true
}
\lstdefinestyle{GeniusCmd}{
  frame=tb,
  commentstyle=\color{red!50!green!50!blue!50},
  keywordstyle=\color{mybluei}\bfseries,
  backgroundcolor=\color{mygray},
  stringstyle=\ttfamily,
  basicstyle=\footnotesize,
  breaklines=true, 
  breakautoindent=true
}

\lstdefinestyle{GeniusCode}{
  frame=tb,
  commentstyle=\color{blue!70},
  keywordstyle=\color{red}\bfseries,
  backgroundcolor=\color{mygray},
  stringstyle=\ttfamily,
  morekeywords={GLOBAL,ELIMINATE,MESH,HOOK}, 
  basicstyle=\footnotesize,
  breaklines=true, 
  breakautoindent=true
}

\newenvironment{TableMargin}[1][H]{%
  \begin{table}[#1]
  \begin{adjustwidth}{\dimexpr-\marginparwidth-\marginparsep}{}
  }
  {\end{adjustwidth}
   \end{table}}

\newcommand{\ParameterListSubHead}[1]{
\multicolumn{5}{l}{\textbf{#1}}
}

%%------------Chapter, Section, Subsection Style define------------------------------
\titleformat{\chapter}[display]%
  {\normalfont\ChapterFont\huge\color{myblueii}}%
  {}%
  {0pt}%
  {
    \begin{minipage}[t]{50pt}
      \parbox[t]{45pt}{\raggedleft%
      \color{mybluei}%
      {\usefont{T1}{qhv}{n}{n}\selectfont\small\chaptertitlename}\\%
      {\fontsize{40}{80}\selectfont\thechapter}}%
    \end{minipage}
    \begin{minipage}[t]{\dimexpr\textwidth-60pt}
    \begin{mdframed}[linecolor=mybluei,linewidth=1pt,topline=false,rightline=false]%
      \color{myblueii}\vskip\baselineskip%
      \raggedright\chaptertitlefont #1%
    \end{mdframed}
    \end{minipage}
  }

\titleformat{name=\chapter,numberless}[display]%
  {\normalfont\ChapterFont}%
  {}%
  {0pt}%
  {\begin{mdframed}[linecolor=mybluei,linewidth=1pt,topline=false,rightline=false]%
   \color{myblueii}\vskip\baselineskip%
   \parbox[b]{\dimexpr\textwidth-12pt}{%
   \raggedright\chaptertitlefont #1}%
   \end{mdframed}%
  }

\titleformat{\section}%
  {\normalfont\Large\sffamily\SectionFont\color{myblueii}}%
  {\hspace*{\dimexpr-\marginparwidth-\marginparsep\relax}%
  \color{myblueii}%
  }
  {0em}
  {\rule{\dimexpr\textwidth+\marginparwidth+\marginparsep\relax}{1pt}%
  \linebreak%\vspace*{1pc}%
  #1}[\vskip-1em]

\titleformat{\subsection}%
  {\normalfont\large\sffamily\SectionFont\color{myblueii}}
  {\hspace*{\dimexpr-\marginparwidth-\marginparsep\relax}%
  \color{myblueii}%
  }
  {0em}
  {#1}[\vskip-1.1em]

 \titleformat{\subsubsection}%
  {\normalfont\large\sffamily\SectionFont\color{myblueii!80}}
  {\hspace*{\dimexpr-\marginparwidth-\marginparsep\relax}%
  \color{myblueii!80}%
  }
  {0em}
  {#1}[\vskip-1.1em]

%%-----------------------------------------------Header define------------------------------
\RequirePackage{fancyhdr}
\fancypagestyle{plain}{%
\fancyheadoffset[RE,LO]{\dimexpr\marginparsep+\marginparwidth}
\fancyfootoffset[RE,LO]{\dimexpr\marginparsep+\marginparwidth}
\fancyfoot[CO]{\bfseries \thepage} % except the center
%\fancyhead[RO]{\thepage}
\fancyhead{}%
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
}
\fancypagestyle{heading}{%
\fancyhf{} % clear all header and footer fields
\fancyheadoffset[RE,LO]{\dimexpr\marginparsep+\marginparwidth}
\fancyfootoffset[RE,LO]{\dimexpr\marginparsep+\marginparwidth}
\fancyfoot[CO]{\bfseries \thepage} % except the center
\fancyhead[RE,LO]{\rightmark}
\fancyhead[RO]{\thepage}
\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{0pt}
}


\titlespacing*{\chapter}{0pt}{0pt}{10mm}
\titlespacing*{name=\chapter,numberless}{0pt}{0pt}{-10mm}


\newcommand{\marginhead}[1]{\marginpar{\vspace*{1.2em}\color{myblueii}\raggedleft\SectionFont #1}} 

 
\newenvironment{widetext}%
{\begin{adjustwidth}{\dimexpr-\marginparwidth-\marginparsep}{}\centering}%
{\end{adjustwidth}}%


\def\eVolt{\text{eV}}
\def\Volt{\text{V}}
\def\Percent{\text{\,\%}}
\def\uMeter{~\mu \rm m}
\def\Kelvin{\text{K}}
\def\Per{\text{/}}
\def\Ampere{\text{A}}
\def\cMeter{\text{cm}}
\def\Second{\text{s}}
\def\Hertz{\text{Hz}}
\def\Watt{\text{W}}
\def\Ohm{\Omega}
\def\Farad{\text{F}}
\def\Henry{\text{H}}
\def\Coulomb{\text{C}}
\def\Joule{\text{J}}
\def\Inverse{\,}
\def\Cubic\cMeter{cm$^3$}
\newcommand{\Square}[1]{{#1}^2}
\newcommand{\ISquare}[1]{{#1}^{-2}}
\def\ttsl{\text} 
\def\low{\text}
\reversemarginpar
\parindent=0pt
\parskip=.8\baselineskip


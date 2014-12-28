%%
%% This is file `elsarticle.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% elsarticle.dtx  (with options: `class')
%% 
%% Copyright 2007, 2008, 2009 Elsevier Ltd
%% 
%% This file is part of the 'Elsarticle Bundle'.
%% -------------------------------------------
%% 
%% It may be distributed under the conditions of the LaTeX Project Public
%% License, either version 1.2 of this license or (at your option) any
%% later version.  The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% The list of all files belonging to the 'Elsarticle Bundle' is
%% given in the file `manifest.txt'.
%% 
%%
%% $Id: elsarticle.dtx 19 2009-12-17 07:07:52Z rishi $
%%
 \def\RCSfile{elsarticle}%
 \def\RCSversion{1.20b}%
 \def\RCSdate{2009/09/17}%
 \def\@shortjnl{\relax}
 \def\@journal{Elsevier Ltd} \def\@company{Elsevier Ltd}
 \def\@issn{000-0000}
 \def\@shortjid{elsarticle}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{\@shortjid}[\RCSdate, \RCSversion: \@journal]
\def\ABD{\AtBeginDocument}
\newif\ifpreprint \preprintfalse
\newif\iflongmktitle \longmktitlefalse

\def\@blstr{1}
\newdimen\@bls
\@bls=\baselineskip

\def\@finalWarning{%
  *****************************************************\MessageBreak
   This document is typeset in the CRC style which\MessageBreak
   is not suitable for submission.\MessageBreak
   \MessageBreak
   Please typeset again using 'preprint' option\MessageBreak
   for creating PDF suitable for submission.\MessageBreak
  ******************************************************\MessageBreak
}

\DeclareOption{preprint}{\global\preprinttrue
  \gdef\@blstr{1}\xdef\jtype{0}%
   \AtBeginDocument{\@twosidefalse\@mparswitchfalse}}
\DeclareOption{final}{\gdef\@blstr{1}\global\preprintfalse}
\DeclareOption{review}{\global\preprinttrue\gdef\@blstr{1.5}}
\DeclareOption{authoryear}{\xdef\@biboptions{round,authoryear}}
\DeclareOption{number}{\xdef\@biboptions{numbers}}
\DeclareOption{numbers}{\xdef\@biboptions{numbers}}
\DeclareOption{longtitle}{\global\longmktitletrue}
\DeclareOption{5p}{\xdef\jtype{5}\global\preprintfalse
  \ExecuteOptions{twocolumn}}
  \def\jtype{0}
\DeclareOption{3p}{\xdef\jtype{3}\global\preprintfalse}
\DeclareOption{1p}{\xdef\jtype{1}\global\preprintfalse
  \AtBeginDocument{\@twocolumnfalse}}
\DeclareOption{times}{\IfFileExists{txfonts.sty}%
  {\AtEndOfClass{\RequirePackage{txfonts}%
  \gdef\ttdefault{cmtt}%
   \let\iint\relax
  \let\iiint\relax
  \let\iiiint\relax
  \let\idotsint\relax
  \let\openbox\relax}}{\RequirePackage{times}}}
\ExecuteOptions{a4paper,10pt,oneside,onecolumn,number,preprint}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}
\RequirePackage{graphicx}
\let\comma\@empty
\let\tnotesep\@empty
\def\title#1{\gdef\@title{#1}}
\let\@title\@empty

\def\elsLabel#1{\@bsphack\protected@write\@auxout{}%
         {\string\Newlabel{#1}{\@currentlabel}}\@esphack}
\def\Newlabel#1#2{\expandafter\xdef\csname X@#1\endcsname{#2}}

\def\elsRef#1{\@ifundefined{X@#1}{0}{\csname X@#1\endcsname}%
}

\def\tnotemark[#1]{\textsuperscript{\@for\@@tmark:=#1\do{%
      \edef\tnotenum{\@ifundefined{X@\@@tmark}{1}{\elsRef{\@@tmark}}}%
      \ifcase\tnotenum\or\ding{73}\or,\ding{73}\ding{73}\fi}}%
}
\let\@tnotemark\@empty

\let\@tnotes\@empty
\RequirePackage{pifont}
\newcounter{tnote}
\def\tnotetext[#1]#2{\g@addto@macro\@tnotes{%
  \refstepcounter{tnote}\elsLabel{#1}%
   \def\thefootnote{\ifcase\c@tnote\or\ding{73}\or\ding{73}\ding{73}\fi}%
    \footnotetext{#2}}}

\let\@nonumnotes\@empty
\def\nonumnote#1{\g@addto@macro\@nonumnotes{%
     \let\thefootnote\relax\footnotetext{#1}}}

\newcounter{fnote}
\def\fnmark[#1]{\let\comma\@empty
    \def\@fnmark{\@for\@@fnmark:=#1\do{%
    \edef\fnotenum{\@ifundefined{X@\@@fnmark}{1}{\elsRef{\@@fnmark}}}%
  \unskip\comma\fnotenum\let\comma,}}%
}

\let\@fnotes\@empty\let\@fnmark\@empty
\def\fntext[#1]#2{\g@addto@macro\@fnotes{%
     \refstepcounter{fnote}\elsLabel{#1}%
   \def\thefootnote{\thefnote}%
   \global\setcounter{footnote}{\thefnote}%
   \footnotetext{#2}}}

\def\cormark[#1]{\edef\cnotenum{\elsRef{#1}}%
    \unskip\textsuperscript{\sep\ifcase\cnotenum\or
       $\ast$\or$\ast\ast$\fi\hspace{-1pt}}\let\sep=,}

\let\@cormark\@empty
\let\@cornotes\@empty
\newcounter{cnote}
\def\cortext[#1]#2{\g@addto@macro\@cornotes{%
    \refstepcounter{cnote}\elsLabel{#1}%
    \def\thefootnote{\ifcase\thecnote\or$\ast$\or
    $\ast\ast$\fi}%
    \footnotetext{#2}}}

\let\@corref\@empty
\def\corref#1{\edef\cnotenum{\elsRef{#1}}%
    \edef\@corref{\ifcase\cnotenum\or
         $\ast$\or$\ast\ast$\fi\hskip-1pt}}

\def\fnref#1{\fnmark[#1]}
\def\tnoteref#1{\tnotemark[#1]}

\def\resetTitleCounters{\c@cnote=0
   \c@fnote=0 \c@tnote=0 \c@footnote=0}

\let\eadsep\@empty
\let\@elseads\@empty
\let\@elsuads\@empty
\let\@cormark\@empty
\def\hashchar{\expandafter\@gobble\string\~}
\def\underscorechar{\expandafter\@gobble\string\_}
\def\lbracechar{\expandafter\@gobble\string\{}
\def\rbracechar{\expandafter\@gobble\string\}}

\def\ead{\@ifnextchar[{\@uad}{\@ead}}
\gdef\@ead#1{\bgroup\def\_{\string\underscorechar\space}%
  \def\{{\string\lbracechar\space}%
   \def~{\hashchar\space}%
   \def\}{\string\rbracechar\space}%
   \edef\tmp{\the\@eadauthor}
   \immediate\write\@auxout{\string\emailauthor
     {#1}{\expandafter\strip@prefix\meaning\tmp}}%
  \egroup
}
\newcounter{ead}
\gdef\emailauthor#1#2{\stepcounter{ead}%
     \g@addto@macro\@elseads{\raggedright%
      \let\corref\@gobble
      \eadsep\texttt{#1} (#2)\def\eadsep{\unskip,\space}}%
}
\gdef\@uad[#1]#2{\bgroup
  \def~{\string\hashchar\space}%
  \def\_{\string\underscorechar\space}%
   \edef\tmp{\the\@eadauthor}
   \immediate\write\@auxout{\string\urlauthor
     {#2}{\expandafter\strip@prefix\meaning\tmp}}%
  \egroup
}
\def\urlauthor#1#2{\g@addto@macro\@elsuads{\let\corref\@gobble%
     \raggedright\eadsep\texttt{#1}\space(#2)%
     \def\eadsep{\unskip,\space}}%
}

\def\elsauthors{}
\def\pprinttitle{}
\let\authorsep\@empty
\let\sep\@empty
\newcounter{author}
\def\author{\@ifnextchar[{\@@author}{\@author}}

\newtoks\@eadauthor
\def\@@author[#1]#2{\g@addto@macro\elsauthors{%
    \def\baselinestretch{1}%
    \authorsep#2\unskip\textsuperscript{%#1%
      \@for\@@affmark:=#1\do{%
       \edef\affnum{\@ifundefined{X@\@@affmark}{1}{\elsRef{\@@affmark}}}%
     \unskip\sep\affnum\let\sep=,}%
      \ifx\@fnmark\@empty\else\unskip\sep\@fnmark\let\sep=,\fi
      \ifx\@corref\@empty\else\unskip\sep\@corref\let\sep=,\fi
      }%
    \def\authorsep{\unskip,\space}%
    \global\let\sep\@empty\global\let\@corref\@empty
    \global\let\@fnmark\@empty}%
    \@eadauthor={#2}
}

\def\@author#1{\g@addto@macro\elsauthors{\normalsize%
    \def\baselinestretch{1}%
    \upshape\authorsep#1\unskip\textsuperscript{%
      \ifx\@fnmark\@empty\else\unskip\sep\@fnmark\let\sep=,\fi
      \ifx\@corref\@empty\else\unskip\sep\@corref\let\sep=,\fi
      }%
    \def\authorsep{\unskip,\space}%
    \global\let\@fnmark\@empty
    \global\let\@corref\@empty
    \global\let\sep\@empty}%
    \@eadauthor={#1}
}

\def\elsaddress{}
\def\addsep{\par\vskip6pt}
\def\address{\@ifnextchar[{\@@address}{\@address}}

\def\@alph#1{%
  \ifcase#1\or a\or b\or c\or d\or e\or f\or g\or h\or i\or j\or k\or
  l\or m\or n\or o\or p\or q\or r\or s\or t\or u\or v\or w\or x\or
  y\or z%
  \or aa\or ab\or ac\or ad\or ae\or af\or ag\or ah\or ai\or aj\or
  ak\or al\or am\or an\or ao\or ap\or aq\or ar\or as\or at\or au\or
  av\or aw\or ax\or ay\or az%
  \or ba\or bb\or bc\or bd\or be\or bf\or bg\or bh\or bi\or bj\or
  bk\or bl\or bm\or bn\or bo\or bp\or bq\or br\or bs\or bt\or bu\or
  bv\or bw\or bx\or by\or bz%
  \or ca\or cb\or cc\or cd\or ce\or cf\or cg\or ch\or ci\or cj\or
  ck\or cl\or cm\or cn\or co\or cp\or cq\or cr\or cs\or ct\or cu\or
  cv\or cw\or cx\or cy\or cz%
  \or da\or db\or dc\or dd\or de\or df\or dg\or dh\or di\or dj\or
  dk\or dl\or dm\or dn\or do\or dp\or dq\or dr\or ds\or dt\or du\or
  dv\or dw\or dx\or dy\or dz%
  \or ea\or eb\or ec\or ed\or ee\or ef\or eg\or eh\or ei\or ej\or
  ek\or el\or em\or en\or eo\or ep\or eq\or er\or es\or et\or eu\or
  ev\or ew\or ex\or ey\or ez%
  \or fa\or fb\or fc\or fd\or fe\or ff\or fg\or fh\or fi\or fj\or
  fk\or fl\or fm\or fn\or fo\or fp\or fq\or fr\or fs\or ft\or fu\or
  fv\or fw\or fx\or fy\or fz%
  \or ga\or gb\or gc\or gd\or ge\or gf\or gg\or gh\or gi\or gj\or
  gk\or gl\or gm\or gn\or go\or gp\or gq\or gr\or gs\or gt\or gu\or
  gv\or gw\or gx\or gy\or gz%
  \else\@ctrerr\fi}

\newcounter{affn}
\renewcommand\theaffn{\alph{affn}}

\long\def\@@address[#1]#2{\g@addto@macro\elsaddress{%
    \def\baselinestretch{1}%
     \refstepcounter{affn}
     \xdef\@currentlabel{\theaffn}
     \elsLabel{#1}%
    \textsuperscript{\theaffn}#2\par}}

\long\def\@address#1{\g@addto@macro\elsauthors{%
    \def\baselinestretch{1}%
    \addsep\footnotesize\itshape#1\def\addsep{\par\vskip6pt}%
    \def\authorsep{\par\vskip8pt}}}

\newbox\absbox
\renewenvironment{abstract}{\global\setbox\absbox=\vbox\bgroup
  \hsize=\textwidth\def\baselinestretch{1}%
  \noindent\unskip\textbf{Abstract}
 \par\medskip\noindent\unskip\ignorespaces}
 {\egroup}

\newbox\keybox
\def\keyword{%
  \def\sep{\unskip, }%
 \def\MSC{\@ifnextchar[{\@MSC}{\@MSC[2000]}}
  \def\@MSC[##1]{\par\leavevmode\hbox {\it ##1~MSC:\space}}%
  \def\PACS{\par\leavevmode\hbox {\it PACS:\space}}%
  \def\JEL{\par\leavevmode\hbox {\it JEL:\space}}%
  \global\setbox\keybox=\vbox\bgroup\hsize=\textwidth
  \normalsize\normalfont\def\baselinestretch{1}
  \parskip\z@
  \noindent\textit{Keywords: }
  \raggedright                         % Keywords are not justified.
  \ignorespaces}
\def\endkeyword{\par \egroup}

\newdimen\Columnwidth
\Columnwidth=\columnwidth

\def\printFirstPageNotes{%
  \iflongmktitle
   \let\columnwidth=\textwidth\fi
  \ifx\@tnotes\@empty\else\@tnotes\fi
  \ifx\@nonumnotes\@empty\else\@nonumnotes\fi
  \ifx\@cornotes\@empty\else\@cornotes\fi
  \ifx\@elseads\@empty\relax\else
   \let\thefootnote\relax
   \footnotetext{\ifnum\theead=1\relax
      \textit{Email address:\space}\else
      \textit{Email addresses:\space}\fi
     \@elseads}\fi
  \ifx\@elsuads\@empty\relax\else
   \let\thefootnote\relax
   \footnotetext{\textit{URL:\space}%
     \@elsuads}\fi
  \ifx\@fnotes\@empty\else\@fnotes\fi
  \iflongmktitle\if@twocolumn
   \let\columnwidth=\Columnwidth\fi\fi
}

\long\def\pprintMaketitle{\clearpage
  \iflongmktitle\if@twocolumn\let\columnwidth=\textwidth\fi\fi
  \resetTitleCounters
  \def\baselinestretch{1}%
  \printFirstPageNotes
  \begin{center}%
 \thispagestyle{pprintTitle}%
   \def\baselinestretch{1}%
    \Large\@title\par\vskip18pt
    \normalsize\elsauthors\par\vskip10pt
    \footnotesize\itshape\elsaddress\par\vskip36pt
    \hrule\vskip12pt
    \ifvoid\absbox\else\unvbox\absbox\par\vskip10pt\fi
    \ifvoid\keybox\else\unvbox\keybox\par\vskip10pt\fi
    \hrule\vskip12pt
    \end{center}%
  \gdef\thefootnote{\arabic{footnote}}%
  }

\def\printWarning{%
     \mbox{}\par\vfill\par\bgroup
     \fboxsep12pt\fboxrule1pt
     \hspace*{.18\textwidth}
     \fcolorbox{gray50}{gray10}{\box\warnbox}
     \egroup\par\vfill\thispagestyle{empty}
     \setcounter{page}{0}
     \clearpage}

\long\def\finalMaketitle{%
  \resetTitleCounters
  \def\baselinestretch{1}%
   \MaketitleBox
   \thispagestyle{pprintTitle}%
  \gdef\thefootnote{\arabic{footnote}}%
  }

\long\def\MaketitleBox{%
  \resetTitleCounters
  \def\baselinestretch{1}%
  \begin{center}%
   \def\baselinestretch{1}%
    \Large\@title\par\vskip18pt
    \normalsize\elsauthors\par\vskip10pt
    \footnotesize\itshape\elsaddress\par\vskip36pt
    \hrule\vskip12pt
    \ifvoid\absbox\else\unvbox\absbox\par\vskip10pt\fi
    \ifvoid\keybox\else\unvbox\keybox\par\vskip10pt\fi
    \hrule\vskip12pt
    \end{center}%
  }

\def\FNtext#1{\par\bgroup\footnotesize#1\egroup}
\newdimen\space@left
\def\alarm#1{\typeout{******************************}%
             \typeout{#1}%
             \typeout{******************************}%
}
\long\def\getSpaceLeft{%\global\@twocolumnfalse%
   \global\setbox0=\vbox{\hsize=\textwidth\MaketitleBox}%
   \global\setbox1=\vbox{\hsize=\textwidth
    \let\footnotetext\FNtext
    \printFirstPageNotes}%
    \xdef\noteheight{\the\ht1}%
    \xdef\titleheight{\the\ht0}%
    \@tempdima=\vsize
    \advance\@tempdima-\noteheight
    \advance\@tempdima-1\baselineskip
}

  \skip\footins=24pt

\newbox\els@boxa
\newbox\els@boxb

\ifpreprint
  \def\maketitle{\pprintMaketitle}
  \else
   \ifnum\jtype=1
    \def\maketitle{%
      \iflongmktitle\getSpaceLeft
       \global\setbox\els@boxa=\vsplit0 to \@tempdima
       \box\els@boxa\par\resetTitleCounters
       \thispagestyle{pprintTitle}%
       \printFirstPageNotes
       \box0%
      \else
       \finalMaketitle\printFirstPageNotes
      \fi
    \gdef\thefootnote{\arabic{footnote}}}%
  \else
 \ifnum\jtype=5
    \def\maketitle{%
      \iflongmktitle\getSpaceLeft
       \global\setbox\els@boxa=\vsplit0 to \@tempdima
       \box\els@boxa\par\resetTitleCounters
       \thispagestyle{pprintTitle}%
       \printFirstPageNotes
       \twocolumn[\box0]%\printFirstPageNotes
      \else
       \twocolumn[\finalMaketitle]\printFirstPageNotes
     \fi
     \gdef\thefootnote{\arabic{footnote}}}
  \else
  \if@twocolumn
    \def\maketitle{%
      \iflongmktitle\getSpaceLeft
       \global\setbox\els@boxa=\vsplit0 to \@tempdima
       \box\els@boxa\par\resetTitleCounters
       \thispagestyle{pprintTitle}%
       \printFirstPageNotes
       \twocolumn[\box0]%
      \else
       \twocolumn[\finalMaketitle]\printFirstPageNotes
      \fi
     \gdef\thefootnote{\arabic{footnote}}}%
   \else
    \def\maketitle{%
      \iflongmktitle\getSpaceLeft
       \global\setbox\els@boxa=\vsplit0 to \@tempdima
       \box\els@boxa\par\resetTitleCounters
       \thispagestyle{pprintTitle}%
       \printFirstPageNotes
       \box0%
     \else
       \finalMaketitle\printFirstPageNotes
      \fi
    \gdef\thefootnote{\arabic{footnote}}}%
   \fi
  \fi
 \fi
\fi
\def\ps@pprintTitle{%
     \let\@oddhead\@empty
     \let\@evenhead\@empty
     \def\@oddfoot{\footnotesize\itshape
       Preprint submitted to \ifx\@journal\@empty Elsevier
       \else\@journal\fi\hfill\today}%
     \let\@evenfoot\@oddfoot}
\def\@seccntDot{.}
\def\@seccntformat#1{\csname the#1\endcsname\@seccntDot\hskip 0.5em}

\renewcommand\section{\@startsection {section}{1}{\z@}%
           {18\p@ \@plus 6\p@ \@minus 3\p@}%
           {9\p@ \@plus 6\p@ \@minus 3\p@}%
           {\normalsize\bfseries\boldmath}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
           {12\p@ \@plus 6\p@ \@minus 3\p@}%
           {3\p@ \@plus 6\p@ \@minus 3\p@}%
           {\normalfont\normalsize\itshape}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
           {12\p@ \@plus 6\p@ \@minus 3\p@}%
           {\p@}%
           {\normalfont\normalsize\itshape}}

\def\paragraph{\secdef{\els@aparagraph}{\els@bparagraph}}
\def\els@aparagraph[#1]#2{\elsparagraph[#1]{#2.}}
\def\els@bparagraph#1{\elsparagraph*{#1.}}

\newcommand\elsparagraph{\@startsection{paragraph}{4}{0\z@}%
           {10\p@ \@plus 6\p@ \@minus 3\p@}%
           {-6\p@}%
           {\normalfont\itshape}}
\newdimen\leftMargin
\leftMargin=2em
\newtoks\@enLab  %\newtoks\@enfont
\def\@enQmark{?}
\def\@enLabel#1#2{%
  \edef\@enThe{\noexpand#1{\@enumctr}}%
  \@enLab\expandafter{\the\@enLab\csname the\@enumctr\endcsname}%
  \@enloop}
\def\@enSpace{\afterassignment\@enSp@ce\let\@tempa= }
\def\@enSp@ce{\@enLab\expandafter{\the\@enLab\space}\@enloop}
\def\@enGroup#1{\@enLab\expandafter{\the\@enLab{#1}}\@enloop}
\def\@enOther#1{\@enLab\expandafter{\the\@enLab#1}\@enloop}
\def\@enloop{\futurelet\@entemp\@enloop@}
\def\@enloop@{%
  \ifx A\@entemp         \def\@tempa{\@enLabel\Alph  }\else
  \ifx a\@entemp         \def\@tempa{\@enLabel\alph  }\else
  \ifx i\@entemp         \def\@tempa{\@enLabel\roman }\else
  \ifx I\@entemp         \def\@tempa{\@enLabel\Roman }\else
  \ifx 1\@entemp         \def\@tempa{\@enLabel\arabic}\else
  \ifx \@sptoken\@entemp \let\@tempa\@enSpace         \else
  \ifx \bgroup\@entemp   \let\@tempa\@enGroup         \else
  \ifx \@enum@\@entemp   \let\@tempa\@gobble          \else
                         \let\@tempa\@enOther
             \fi\fi\fi\fi\fi\fi\fi\fi
  \@tempa}
\newlength{\@sep} \newlength{\@@sep}
\setlength{\@sep}{.5\baselineskip plus.2\baselineskip
            minus.2\baselineskip}
\setlength{\@@sep}{.1\baselineskip plus.01\baselineskip
            minus.05\baselineskip}
\providecommand{\sfbc}{\rmfamily\upshape}
\providecommand{\sfn}{\rmfamily\upshape}
\def\@enfont{\ifnum \@enumdepth >1\let\@nxt\sfn \else\let\@nxt\sfbc \fi\@nxt}
\def\enumerate{%
   \ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\fi
   \@ifnextchar[{\@@enum@}{\@enum@}}
\def\@@enum@[#1]{%
  \@enLab{}\let\@enThe\@enQmark
  \@enloop#1\@enum@
  \ifx\@enThe\@enQmark\@warning{The counter will not be printed.%
   ^^J\space\@spaces\@spaces\@spaces The label is: \the\@enLab}\fi
  \expandafter\edef\csname label\@enumctr\endcsname{\the\@enLab}%
  \expandafter\let\csname the\@enumctr\endcsname\@enThe
  \csname c@\@enumctr\endcsname7
  \expandafter\settowidth
            \csname leftmargin\romannumeral\@enumdepth\endcsname
            {\the\@enLab\hskip\labelsep}%
  \@enum@}
\def\@enum@{\list{{\@enfont\csname label\@enumctr\endcsname}}%
           {\usecounter{\@enumctr}\def\makelabel##1{\hss\llap{##1}}%
     \ifnum \@enumdepth>1\setlength{\topsep}{\@@sep}\else
           \setlength{\topsep}{\@sep}\fi
     \ifnum \@enumdepth>1\setlength{\itemsep}{0pt plus1pt minus1pt}%
      \else \setlength{\itemsep}{\@@sep}\fi
     %\setlength\leftmargin{\leftMargin}%%%{1.8em}
     \setlength{\parsep}{0pt plus1pt minus1pt}%
     \setlength{\parskip}{0pt plus1pt minus1pt}
                   }}

\def\endenumerate{\par\ifnum \@enumdepth >1\addvspace{\@@sep}\else
           \addvspace{\@sep}\fi \endlist}

\def\sitem{\@noitemargtrue\@item[\@itemlabel *]}

\def\itemize{\@ifnextchar[{\@Itemize}{\@Itemize[]}}

\def\@Itemize[#1]{\def\next{#1}%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
   \advance\@itemdepth\@ne
  \ifx\next\@empty\else\expandafter\def\csname
   labelitem\romannumeral\the\@itemdepth\endcsname{#1}\fi%
  \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
  \expandafter\list\csname\@itemitem\endcsname
  {\def\makelabel##1{\hss\llap{##1}}}%
 \fi}
\def\newdefinition#1{%
  \@ifnextchar[{\@odfn{#1}}{\@ndfn{#1}}}%]
\def\@ndfn#1#2{%
  \@ifnextchar[{\@xndfn{#1}{#2}}{\@yndfn{#1}{#2}}}
\def\@xndfn#1#2[#3]{%
  \expandafter\@ifdefinable\csname #1\endcsname
    {\@definecounter{#1}\@newctr{#1}[#3]%
     \expandafter\xdef\csname the#1\endcsname{%
       \expandafter\noexpand\csname the#3\endcsname \@dfncountersep
          \@dfncounter{#1}}%
     \global\@namedef{#1}{\@dfn{#1}{#2}}%
     \global\@namedef{end#1}{\@enddefinition}}}
\def\@yndfn#1#2{%
  \expandafter\@ifdefinable\csname #1\endcsname
    {\@definecounter{#1}%
     \expandafter\xdef\csname the#1\endcsname{\@dfncounter{#1}}%
     \global\@namedef{#1}{\@dfn{#1}{#2}}%
     \global\@namedef{end#1}{\@enddefinition}}}
\def\@odfn#1[#2]#3{%
  \@ifundefined{c@#2}{\@nocounterr{#2}}%
    {\expandafter\@ifdefinable\csname #1\endcsname
    {\global\@namedef{the#1}{\@nameuse{the#2}}
  \global\@namedef{#1}{\@dfn{#2}{#3}}%
  \global\@namedef{end#1}{\@enddefinition}}}}
\def\@dfn#1#2{%
  \refstepcounter{#1}%
  \@ifnextchar[{\@ydfn{#1}{#2}}{\@xdfn{#1}{#2}}}
\def\@xdfn#1#2{%
  \@begindefinition{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@ydfn#1#2[#3]{%
  \@opargbegindefinition{#2}{\csname the#1\endcsname}{#3}\ignorespaces}
\def\@dfncounter#1{\noexpand\arabic{#1}}
\def\@dfncountersep{.}
\def\@begindefinition#1#2{\trivlist
   \item[\hskip\labelsep{\bfseries #1\ #2.}]\upshape}
\def\@opargbegindefinition#1#2#3{\trivlist
      \item[\hskip\labelsep{\bfseries #1\ #2\ (#3).}]\upshape}
\def\@enddefinition{\endtrivlist}

\def\@begintheorem#1#2{\trivlist
  \let\baselinestretch\@blstr
   \item[\hskip \labelsep{\bfseries #1\ #2.}]\itshape}
\def\@opargbegintheorem#1#2#3{\trivlist
  \let\baselinestretch\@blstr
      \item[\hskip \labelsep{\bfseries #1\ #2\ (#3).}]\itshape}

\def\newproof#1{%
  \@ifnextchar[{\@oprf{#1}}{\@nprf{#1}}}
\def\@nprf#1#2{%
  \@ifnextchar[{\@xnprf{#1}{#2}}{\@ynprf{#1}{#2}}}
\def\@xnprf#1#2[#3]{%
  \expandafter\@ifdefinable\csname #1\endcsname
    {\@definecounter{#1}\@newctr{#1}[#3]%
     \expandafter\xdef\csname the#1\endcsname{%
       \expandafter\noexpand\csname the#3\endcsname \@prfcountersep
          \@prfcounter{#1}}%
     \global\@namedef{#1}{\@prf{#1}{#2}}%
     \global\@namedef{end#1}{\@endproof}}}
\def\@ynprf#1#2{%
  \expandafter\@ifdefinable\csname #1\endcsname
    {\@definecounter{#1}%
     \expandafter\xdef\csname the#1\endcsname{\@prfcounter{#1}}%
     \global\@namedef{#1}{\@prf{#1}{#2}}%
     \global\@namedef{end#1}{\@endproof}}}
\def\@oprf#1[#2]#3{%
  \@ifundefined{c@#2}{\@nocounterr{#2}}%
    {\expandafter\@ifdefinable\csname #1\endcsname
    {\global\@namedef{the#1}{\@nameuse{the#2}}%
  \global\@namedef{#1}{\@prf{#2}{#3}}%
  \global\@namedef{end#1}{\@endproof}}}}
\def\@prf#1#2{%
  \refstepcounter{#1}%
  \@ifnextchar[{\@yprf{#1}{#2}}{\@xprf{#1}{#2}}}
\def\@xprf#1#2{%
  \@beginproof{#2}{\csname the#1\endcsname}\ignorespaces}
\def\@yprf#1#2[#3]{%
  \@opargbeginproof{#2}{\csname the#1\endcsname}{#3}\ignorespaces}
\def\@prfcounter#1{\noexpand\arabic{#1}}
\def\@prfcountersep{.}
\def\@beginproof#1#2{\trivlist\let\baselinestretch\@blstr
   \item[\hskip \labelsep{\scshape #1.}]\rmfamily}
\def\@opargbeginproof#1#2#3{\trivlist\let\baselinestretch\@blstr
      \item[\hskip \labelsep{\scshape #1\ (#3).}]\rmfamily}
\def\@endproof{\endtrivlist}
\newcommand*{\qed}{\hbox{}\hfill$\Box$}

\@ifundefined{@biboptions}{\xdef\@biboptions{numbers}}{}
\InputIfFileExists{\jobname.spl}{}{}
\RequirePackage[\@biboptions]{natbib}

\newwrite\splwrite
\immediate\openout\splwrite=\jobname.spl
\def\biboptions#1{\def\next{#1}\immediate\write\splwrite{%
   \string\g@addto@macro\string\@biboptions{%
    ,\expandafter\strip@prefix\meaning\next}}}

\let\baselinestretch=\@blstr

\ifnum\jtype=1
 \RequirePackage{geometry}
 \geometry{twoside,
  paperwidth=210mm,
  paperheight=297mm,
  textheight=562pt,
  textwidth=384pt,
  centering,
  headheight=50pt,
  headsep=12pt,
  footskip=12pt,
  footnotesep=24pt plus 2pt minus 12pt,
 }
 \global\let\bibfont=\footnotesize
 \global\bibsep=0pt
 \if@twocolumn\global\@twocolumnfalse\fi
\else\ifnum\jtype=3
 \RequirePackage{geometry}
 \geometry{twoside,
  paperwidth=210mm,
  paperheight=297mm,
  textheight=622pt,
  textwidth=468pt,
  centering,
  headheight=50pt,
  headsep=12pt,
  footskip=18pt,
  footnotesep=24pt plus 2pt minus 12pt,
  columnsep=2pc
 }
 \global\let\bibfont=\footnotesize
 \global\bibsep=0pt
 \if@twocolumn\input{fleqn.clo}\fi
\else\ifnum\jtype=5
 \RequirePackage{geometry}
 \geometry{twoside,
  paperwidth=210mm,
  paperheight=297mm,
  textheight=682pt,
  textwidth=522pt,
  centering,
 headheight=50pt,
  headsep=12pt,
  footskip=18pt,
  footnotesep=24pt plus 2pt minus 12pt,
  columnsep=18pt
 }%
 \global\let\bibfont=\footnotesize
 \global\bibsep=0pt
 \input{fleqn.clo}
 \global\@twocolumntrue
%%
%% End of option '5p'
%%
\fi\fi\fi
\def\journal#1{\gdef\@journal{#1}}
 \let\@journal\@empty
\newenvironment{frontmatter}{}{\maketitle}

\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip\footnotesize
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\AtBeginDocument{\@ifpackageloaded{hyperref}
  {\def\@linkcolor{blue}
   \def\@anchorcolor{blue}
   \def\@citecolor{blue}
   \def\@filecolor{blue}
   \def\@urlcolor{blue}
   \def\@menucolor{blue}
   \def\@pagecolor{blue}
\begingroup
  \@makeother\`%
  \@makeother\=%
  \edef\x{%
    \edef\noexpand\x{%
      \endgroup
      \noexpand\toks@{%
        \catcode 96=\noexpand\the\catcode`\noexpand\`\relax
        \catcode 61=\noexpand\the\catcode`\noexpand\=\relax
      }%
    }%
    \noexpand\x
  }%
\x
\@makeother\`
\@makeother\=
}{}}
%%
\def\appendixname{Appendix }
\renewcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{equation}{0}
  \gdef\thefigure{\@Alph\c@section.\arabic{figure}}%
  \gdef\thetable{\@Alph\c@section.\arabic{table}}%
  \gdef\thesection{\appendixname~\@Alph\c@section}%
  \@addtoreset{equation}{section}%
  \gdef\theequation{\@Alph\c@section.\arabic{equation}}%
  \addtocontents{toc}{\string\let\string\numberline\string\tmptocnumberline}{}{}
}

%%%% \numberline width calculation for appendix.
\newdimen\appnamewidth
\def\tmptocnumberline#1{%
   \setbox0=\hbox{\appendixname}
   \appnamewidth=\wd0
   \addtolength\appnamewidth{2.5pc}
   \hb@xt@\appnamewidth{#1\hfill}
}

%% Added for work with amsrefs.sty

\@ifpackageloaded{amsrefs}%
  {}
  {%\let\bibsection\relax%
  \AtBeginDocument{\def\cites@b#1#2,#3{%
    \begingroup[%
        \toks@{\InnerCite{#2}#1}%
        \ifx\@empty#3\@xp\@gobble\fi
        \cites@c#3%
}}}
%%
%% Added for avoiding clash with cleveref.sty

\@ifpackageloaded{cleveref}%
 {}
 {\def\tnotetext[#1]#2{\g@addto@macro\@tnotes{%
    \refstepcounter{tnote}%
    \immediate\write\@auxout{\string\Newlabel{#1}{\thetnote}}
    \def\thefootnote{\ifcase\c@tnote\or\ding{73}\or\ding{73}\ding{73}\fi}%
    \footnotetext{#2}}}
%%%
  \def\fntext[#1]#2{\g@addto@macro\@fnotes{%
    \refstepcounter{fnote}%
    \immediate\write\@auxout{\string\Newlabel{#1}{\thefnote}}
    \def\thefootnote{\thefnote}%
    \global\setcounter{footnote}{\thefnote}%
    \footnotetext{#2}}}
%%%
  \def\cortext[#1]#2{\g@addto@macro\@cornotes{%
    \refstepcounter{cnote}%
    \immediate\write\@auxout{\string\Newlabel{#1}{\thecnote}}
    \def\thefootnote{\ifcase\thecnote\or$\ast$\or
    $\ast\ast$\fi}%
    \footnotetext{#2}}}
}
\endinput
%%
%% End of file `elsarticle.cls'.
%%
%% Copyright 2007, 2008, 2009 Elsevier Ltd
%%
%% This file is part of the 'Elsarticle Bundle'.
%% ---------------------------------------------
%%
%% It may be distributed under the conditions of the LaTeX Project Public
%% License, either version 1.2 of this license or (at your option) any
%% later version.  The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% The list of all files belonging to the 'Elsarticle Bundle' is
%% given in the file `manifest.txt'.
%%

%% Template article for Elsevier's document class `elsarticle'
%% with numbered style bibliographic references
%% SP 2008/03/01
%%
%%
%%
%% $Id: elsarticle-template-num.tex 4 2009-10-24 08:22:58Z rishi $
%%
%%
\documentclass[preprint,12pt,3p]{elsarticle}

%% Use the option review to obtain double line spacing
%% \documentclass[preprint,review,12pt]{elsarticle}

%% Use the options 1p,twocolumn; 3p; 3p,twocolumn; 5p; or 5p,twocolumn
%% for a journal layout:
%% \documentclass[final,1p,times]{elsarticle}
%% \documentclass[final,1p,times,twocolumn]{elsarticle}
%% \documentclass[final,3p,times]{elsarticle}
%% \documentclass[final,3p,times,twocolumn]{elsarticle}
%% \documentclass[final,5p,times]{elsarticle}
%% \documentclass[final,5p,times,twocolumn]{elsarticle}

%% if you use PostScript figures in your article
%% use the graphics package for simple commands
%% \usepackage{graphics}
%% or use the graphicx package for more complicated commands
%% \usepackage{graphicx}
%% or use the epsfig package if you prefer to use the old commands
%% \usepackage{epsfig}

%% The amssymb package provides various useful mathematical symbols
\usepackage{amssymb}
%% The amsthm package provides extended theorem environments
%% \usepackage{amsthm}

%% The lineno packages adds line numbers. Start line numbering with
%% \begin{linenumbers}, end it with \end{linenumbers}. Or switch it on
%% for the whole article with \linenumbers after \end{frontmatter}.
%% \usepackage{lineno}

%% natbib.sty is loaded by default. However, natbib options can be
%% provided with \biboptions{...} command. Following options are
%% valid:

%%   round  -  round parentheses are used (default)
%%   square -  square brackets are used   [option]
%%   curly  -  curly braces are used      {option}
%%   angle  -  angle brackets are used    <option>
%%   semicolon  -  multiple citations separated by semi-colon
%%   colon  - same as semicolon, an earlier confusion
%%   comma  -  separated by comma
%%   numbers-  selects numerical citations
%%   super  -  numerical citations as superscripts
%%   sort   -  sorts multiple citations according to order in ref. list
%%   sort&compress   -  like sort, but also compresses numerical citations
%%   compress - compresses without sorting
%%
%% \biboptions{comma,round}

% \biboptions{}

%Todd added for fractions
\usepackage{xfrac}
%Todd added for strike-outs
\usepackage{ulem}
%Todd added for mutlirow tables
\usepackage{multirow}
%Todd added for graphics generation
\usepackage{tikz}
\usetikzlibrary{"automata"}
%Todd added for cross referencing verbatim listings
\usepackage{listings}
%Todd added for psuedocode listings
\usepackage{algpseudocode}



\journal{Nuclear Physics B}

\begin{document}

\begin{frontmatter}

\title{Towards Generating Essence Kernels Using Genetic Algorithms}
\tnotetext[label0]{This is only an example}


\author[label1,label2]{Author One\corref{cor1}\fnref{label3}}
\address[label1]{Address One}
\address[label2]{Address Two\fnref{label4}}

\cortext[cor1]{I am corresponding author}
\fntext[label3]{I also want to inform about\ldots}
\fntext[label4]{Small city}

\ead{author.one@mail.com}
\ead[url]{author-one-homepage.com}

\author[label5]{Author Two}
\address[label5]{Some University}
\ead{author.two@mail.com}

\author[label1,label5]{Author Three}
\ead{author.three@mail.com}

\begin{abstract}
The SEMAT community created the Essence Kernel as a unifying framework for describing and analyzing software engineering endeavors. \cite{JacobsonQueue} The Essence Kernel is based upon human experience and judgement, not empirical data. 

Background: At Carnegie Mellon University in Silicon Valley, we have collected data from masters of science in software engineering students as they complete a team-based project course as their capstone or practicum project. Each week, the team records their progress in an Essence Reflection meeting \cite{EASE2014}. This data serves as training data for evaluating the Essence Kernel and alternative candidate kernels.

Objective: Optimize candidate replacement kernels by using a fitness function based on empirical data in order to improve the Essence Kernel.

Method: Using genetic programming, the kernel genotype will be represented as a collection of linear state machines each with a collection of unique checklist items. Operations to evolve the genotypes include randomly moving checklist items, splitting states, and deleting states by moving their checklist items to other states. 

Results: Genetic programming created random candidate essence kernels that scored higher fitness scores than the original essence kernel. The purpose of this exploratory work is to show one way to generate a candidate Essence kernel directly from empirical data.

Limitations: Given the limited amount of data, the generated kernels may be over-optimized. Additional empirical data is required before recommending replacing the original kernel with a candidate kernel that fits the data.

Conclusion: The original Essence kernel is highly structured around human notions of order. Genetic Algorithms can generate candidate kernels that humans might not normally consider.
\end{abstract}

\begin{keyword}
%% keywords here, in the form: keyword \sep keyword
example \sep \LaTeX \sep template
%% MSC codes here, in the form: \MSC code \sep code
%% or \MSC[2008] code \sep code (2000 is the default)
\end{keyword}

\end{frontmatter}


\include{paper.tex}

%% The Appendices part is started with the command \appendix;
%% appendix sections are then done as normal sections
\appendix

\section{Section in Appendix}
\label{appendix-sec1}

Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. 
Sample text. Sample text. Sample text. Sample text. Sample text. Sample text. 
Sample text. 

%% References
%%
%% Following citation commands can be used in the body text:
%% Usage of \cite is as follows:
%%   \cite{key}         ==>>  [#]
%%   \cite[chap. 2]{key} ==>> [#, chap. 2]
%%

%% References with bibTeX database:

\bibliographystyle{elsarticle-num}
% \bibliographystyle{elsarticle-harv}
% \bibliographystyle{elsarticle-num-names}
% \bibliographystyle{model1a-num-names}
% \bibliographystyle{model1b-num-names}
% \bibliographystyle{model1c-num-names}
% \bibliographystyle{model1-num-names}
% \bibliographystyle{model2-names}
% \bibliographystyle{model3a-num-names}
% \bibliographystyle{model3-num-names}
% \bibliographystyle{model4-names}
% \bibliographystyle{model5-names}
% \bibliographystyle{model6-num-names}

\bibliography{sample}


\end{document}

%%
%% End of file `elsarticle-template-num.tex'.

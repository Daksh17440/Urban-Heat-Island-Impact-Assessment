\def\currversion{April 16, 2019}

\ProvidesClass{agujournal2019}
              [01/14/2019]

\RequirePackage{graphicx}

\setkeys{Gin}{draft=false}
\RequirePackage{xcolor}
\RequirePackage{url}
\definecolor{ltgray}{cmyk}{.12,0,0,.3}
\RequirePackage{lineno}
\advance\linenumbersep 12pt

\RequirePackage{indentfirst}

\RequirePackage{ragged2e}
\RaggedRightParindent=24pt
\advance\RaggedRightRightskip 24pt
\RaggedRight

\RequirePackage{rotating}
\newif\ifturnofflinenums
\let\savesidewaystable\sidewaystable
\let\savesidewaysfigure\sidewaysfigure

\def\sidewaystable{\turnofflinenumstrue\savesidewaystable\centering}
\def\sidewaysfigure{\turnofflinenumstrue\savesidewaysfigure\centering}

\parindent=24pt
\parskip=8pt 

\textheight = 9.25in

\textwidth 5.5in

\advance\voffset-.25in

\advance\hoffset.35in

\topmargin0pt
\headheight 8pt
\headsep 6pt
\topskip  10pt
\footskip 36pt

\columnsep 10pt
\columnseprule 0pt

\footnotesep 6.65pt
\skip\footins 24pt plus .1pt minus .1pt

\floatsep 12pt plus 2pt minus 2pt
\textfloatsep 36pt plus 2pt minus 4pt
\intextsep 24pt plus 2pt minus 2pt

\dblfloatsep 12pt plus 2pt minus 2pt
\dbltextfloatsep 20pt plus 2pt minus 4pt

%% float placement, used by output routine
\@fptop 0pt plus 1fil
\@fpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil
\@dblfptop 0pt plus 1fil
\@dblfpsep 8pt plus 2fil
\@dblfpbot 0pt plus 1fil

\marginparwidth .75in


\setlength\marginparsep{40\p@}

\setlength\marginparpush{5\p@}

\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}

\setcounter{topnumber}{10}
\def\topfraction{.9}
\setcounter{bottomnumber}{10}
\def\bottomfraction{.1}
\setcounter{totalnumber}{10}
\def\textfraction{.2}
\def\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.7}
\def\dblfloatpagefraction{.5}

\setlength\arraycolsep{5\p@}

\tabcolsep 6pt

\setlength\arrayrulewidth{.4\p@}

\setlength\doublerulesep{2\p@}

\setlength\tabbingsep{\labelsep}

\skip\@mpfootins = \skip\footins

\setlength\fboxsep{3\p@}

\setlength\fboxrule{.4\p@}

\widowpenalty10000
\clubpenalty10000

\setcounter{secnumdepth}{4}

\@twosidetrue

\@mparswitchtrue

\@twocolumnfalse

\newif\if@openbib
\@openbibfalse

\newif\if@openright
\newif\if@mainmatter
\newif\if@restonecol
\newif\if@titlepage
\newif\ifdraft
\newif\ifnumlines

\newcommand{\bibname}{Bibliography}
\newcommand{\figurename}{Figure}
\newcommand{\tablename}{Table}
\newcommand{\appendixname}{Appendix}

\DeclareOption{draft}{\global\drafttrue}
\DeclareOption{linenumbers}{\global\numlinestrue}
\DeclareOption{final}{\setlength\overfullrule{0pt}\global\draftfalse}

\ExecuteOptions{letterpaper,10pt,onecolumn,final,openright}
\ProcessOptions

\ifnumlines
\linenumbers*[1]
\fi

\newcount\draftskip
\draftskip=20

\newcommand{\@ptsize}{}

\renewcommand\normalsize{%
\ifdraft
   \@setfontsize\normalsize\@xpt{\draftskip}
\else
   \@setfontsize\normalsize\@xpt{12}
\fi
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize

\newcommand\bignormalsize{\@setfontsize\bignormalsize{10.5pt}{12}}

\newcommand\small{%
\ifdraft
   \@setfontsize\small\@ixpt{\draftskip}%
\else
   \@setfontsize\small\@ixpt{14}%
\fi
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\newcommand\footnotesize{%
\ifdraft
   \@setfontsize\footnotesize\@viiipt{\draftskip}%
\else
   \@setfontsize\footnotesize\@viiipt{12}%
\fi
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}

\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\ifdraft
\@setfontsize\large\@xiipt{\draftskip}
\else
\@setfontsize\large\@xiipt{14}
\fi
}

\newcommand\Large{\ifdraft
\@setfontsize\Large\@xivpt{\draftskip}
\else
\@setfontsize\Large\@xivpt{18}
\fi}

\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand{\cal}{\@fontswitch{\relax}{\mathcal}}
\DeclareRobustCommand{\mit}{\@fontswitch{\relax}{\mathnormal}}

    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
  
\def\ps@headings{\def\@oddfoot{\centerline{\small --\the\c@page--}}
\let\@evenfoot\@oddfoot

\def\@oddhead{\vbox to 0pt{\vss\centerline{\color{ltgray}\small manuscript
submitted to {\it \thejournalname}}\vskip24pt}}
\let\@evenhead\@oddhead
}

\ps@headings

\let\savefootnote\footnote
\let\savefootnotetext\footnotetext

  \renewcommand{\footnoterule}{%
  \kern-3\p@
  \hrule width .4\columnwidth
  \kern 2.6\p@}

 \let\savefootnoterule\footnoterule

  \let\footnoterule\relax

\let\footnoterule\savefootnoterule

\long\def\@makefntext#1{%
\noindent\hspace*{1em}\@makefnmark\,#1}

\def\journalname#1{\def\thejournalname{#1}}
\journalname{Please set Journal Name by using {\tt\string\journalname}}

\def\title#1{\global\c@footnote=0\relax%
{\centering \Large\bf #1 \vskip14pt}
\def\thetitle{#1}}

\def\authors#1{{\centering \normalsize\bf #1\vskip12pt}}
\def\affil#1{$^{#1}$\ignorespaces}
\def\affiliation#1#2{\vskip-.5\parskip\relax{\centering{\footnotesize
$^{#1}$#2\relax}\vskip-\parskip}}

\def\correspondingauthor#1#2{{\let\@thefnmark\relax\@footnotetext{\noindent\vrule
height 18pt width0pt\relax\hbox to-8pt{}{\small
Corresponding author: #1,
{\tt #2}}}}}

\def\thanks#1{{\renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\noindent\hskip-9pt\hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}\footnote{#1}\
		}}

\def\keypoints{\vskip24pt\vskip1sp\subsection*{Key Points:}
\begin{itemize}}
\def\endkeypoints{\end{itemize}}

\def\abstract{\newpage\noindent{\bf Abstract}\vskip-\parskip
\global\c@footnote=0\relax%
\noindent\ignorespaces}
\def\endabstract{\vskip18pt}

\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

\renewcommand{\thesection}      {\arabic{section}}
\renewcommand{\thesubsection}   {\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}    {\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph} {\theparagraph.\arabic{subparagraph}}

\newcommand{\@chapapp}{\chaptername}

\def\@seccntformat#1{\csname the#1\endcsname\ \ }

\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {\ifdraft18pt plus 1pt minus
				   1pt\else 12pt plus 1pt minus 1pt\fi}%
                                   {1sp}%
                                   {\bignormalsize\bfseries\boldmath}}

\newcommand\subsection{\@startsection{subsection}{2}{\parindent}%
                                   {\ifdraft 12pt\else 8pt\fi}%
                                   {1sp}%
                                   {\normalfont\bf\boldmath}}

\newcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}%
                                   {\ifdraft 12pt\else 8pt\fi}%
                                   {1sp}%
                                   {\normalfont\itshape\bfseries}}

\newcommand\paragraph{\@startsection{paragraph}{4}{\parindent}%
                                    {3pt plus 1pt minus 1pt}%
                                    {-1em}%
                                    {\normalfont\normalsize\itshape}}

\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                    {3pt plus 1pt minus 1pt}%
                                    {-1em}%
                                      {\normalfont\normalsize\itshape}}

\long\def\@caption#1[#2]#3{%
  \par
  \begingroup
    \@parboxrestore
    \normalsize
\linenumbers
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}
\def\@float#1{%
  \@ifnextchar[%
    {\@xfloat{#1}}%
    {\edef\reserved@a{\noexpand\@xfloat{#1}[\csname fps@#1\endcsname]}%
     \reserved@a}}
\def\@dblfloat{%
  \if@twocolumn\let\reserved@a\@dbflt\else\let\reserved@a\@float\fi
  \reserved@a}

\newcounter{figure}
\renewcommand{\thefigure}{\arabic{figure}}

\def\fps@figure{tbp} 
\def\ftype@figure{1} 
\def\ext@figure{lof} 
\def\fnum@figure{\figurename~~\thefigure} 
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}

\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}

\newcounter{table}
\renewcommand{\thetable}{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}

\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{10\p@}

\def\xfigure{figure}

\long\def\@makecaption#1#2{%
{\small
\ifx\@captype\xfigure
\vskip\abovecaptionskip\fi
{\ifturnofflinenums\else\ifnumlines\internallinenumbers\fi\fi
 \sbox\@tempboxa{\bf#1.\quad \rm #2}%
  \ifdim \wd\@tempboxa >.9\hsize
\bf #1.\quad\rm\relax #2\par
  \else
{\centering
 \bf #1.\rm\quad #2
\vskip1sp}
  \fi}
\ifx\@captype\xfigure\else
  \vskip\belowcaptionskip\fi
}}

\def\xtable{table}
\def\@array[#1]#2{\setbox\@arstrutbox=\hbox{\vrule
     height\arraystretch \ht\strutbox
     depth\arraystretch \dp\strutbox
     width\z@}\@mkpream{#2}\edef\@preamble{\halign \noexpand\@halignto
\bgroup%
\tabskip\z@\@arstrut\@preamble
\ifx\@captype\xtable\hskip-\tabcolsep\fi  %% <==== Changed
\tabskip\z@ \cr}%
\let\@startpbox\@@startpbox \let\@endpbox\@@endpbox%
  \if #1t\vtop \else \if#1b\vbox \else \vcenter \fi\fi%
  \bgroup\let\par\relax%
  \let\@sharp##\let\protect\relax \lineskip\z@\baselineskip\z@\@preamble}

\def\new@tabacol{\edef\@preamble{\@preamble\hskip0pt}}

\def\@tabclassz{\ifcase \@lastchclass\@acolampacol%
\or \@ampacol \or
   \or \or \@addamp \or \@acolampacol\or \@firstampfalse
\ifx\@captype\xtable \new@tabacol\else\@tabacol \fi%
\fi%
\edef\@preamble{\@preamble%
  \ifcase \@chnum%
     \hfil\ignorespaces\@sharp\unskip\hfil%
     \or \ignorespaces\@sharp\unskip\hfil%
     \or \hfil\hskip\z@ \ignorespaces\@sharp\unskip\fi}}

\let\savehline\hline
\def\hline{\noalign{\vskip3pt}\savehline\noalign{\vskip3pt}}
\def\tablenotes{\vskip2pt\footnotesize}
\let\endtablenotes\relax

\def\@listI{\leftmargin\leftmargini
            \parsep 0\p@ %\@plus2\p@ \@minus0\p@
            \topsep 4\p@ %\@plus2\p@ \@minus0\p@
            \itemsep1\p@ %\@plus2\p@ \@minus0\p@
}
\let\@listi\@listI
\@listi

\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}

\setlength\leftmargini  {28pt}
\setlength\leftmarginii  {11pt}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\setlength\leftmarginv  {1em}
\setlength\leftmarginvi {1em}

\setlength\leftmargin    {\leftmargini}

\setlength  \labelsep  {6pt}

\setlength  \labelwidth{\leftmargini}

\addtolength\labelwidth{-\labelsep}

\leftmargin\leftmargini
\labelwidth\leftmargini\advance\labelwidth-\labelsep


\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}
\renewcommand{\theenumiii}{\roman{enumiii}}
\renewcommand{\theenumiv}{\Alph{enumiv}}

\newcommand{\labelenumi}{\theenumi.\hskip-2pt}
\newcommand{\labelenumii}{(\theenumii)}
\newcommand{\labelenumiii}{\theenumiii.}
\newcommand{\labelenumiv}{\theenumiv.}

\renewcommand{\p@enumii}{\theenumi}
\renewcommand{\p@enumiii}{\theenumi(\theenumii)}
\renewcommand{\p@enumiv}{\p@enumiii\theenumiii}

\newcommand{\labelitemi}{\raise.4ex\hbox{\tiny$\bullet$}}
\newcommand{\labelitemii}{\normalfont\bfseries --}
\newcommand{\labelitemiii}{$\m@th\ast$}
\newcommand{\labelitemiv}{$\m@th\cdot$}

\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}

\newcommand*{\descriptionlabel}[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\newcommand{\today}{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}

\hyphenation{
dem-o-graph-ics
mi-cro-ec-o-nom-ic
or-gan-i-za-tion
or-gan-i-za-tions
ra-tion-ale
sys-tem-at-i-cal-ly
}

\newenvironment{quotation}
               {\small
\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item[]}
               {\endlist}
\newenvironment{quote}
               {\small
\list{}{\rightmargin\leftmargin}%
                \item[]}
               {\endlist}

\let\extract\quotation
\let\endextract\endquotation
% Appendix:
\newcounter{appendnum}

\newif\ifappendon
\newif\ifupperappend

\def\appendix{%
\def\@currentlabel{\Alph{section}:} 
\@addtoreset{equation}{section}
\@addtoreset{table}{section}
\@addtoreset{figure}{section}
%%
\renewcommand{\thesection}{Appendix \Alph{section}} 
\renewcommand{\theequation}{\Alph{section}\arabic{equation}}
\renewcommand{\thefigure}{\Alph{section}\arabic{figure}}
\renewcommand{\thetable}{\Alph{section}\arabic{table}}
\global\appendontrue\goodbreak
\global\c@section=0
\global\c@equation=0
\def\thesection{Appendix \Alph{section}}

\def\thesubsection{\Alph{section}\@arabic{\c@subsection}}
\def\thesubsubsection{\thesubsection\@arabic{\c@subsubsection}}
\def\thesubsubsubsection{\thesubsubsection\@arabic{\c@subsubsection}}
}
% end appendix

%%  Glossary
\def\glossary{\bgroup
\section*{Glossary}
\description
\def\term##1{\item[##1]}}
\def\endglossary{\enddescription\vskip12pt\egroup}
%%

%% Acronyms
\def\acronyms{\bgroup
\section*{Acronyms}
\description
\def\acro##1{\item[##1]}}
\def\endacronyms{\enddescription\vskip12pt\egroup}

%% Notation
\def\notation{\bgroup
\section*{Notation}
\description
\def\notation##1{\item[\boldmath ##1]}}
\def\endnotation{\enddescription\vskip12pt\egroup}

%% Acknowledgments
\def\acknowledgments{\vskip12pt\noindent{\bf
Acknowledgments\vrule depth 6pt
width0pt\relax}\\*\noindent\ignorespaces}

\bibliographystyle{apacite}

\def\references{\thebibliography{}\item[]}
\let\endreferences\endthebibliography

\def\@cite#1#2{{#1\if@tempswa , #2\fi}}

\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{,\penalty\@m\ }%
     \edef\@citeb{\expandafter\@firstofone\@citeb}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}
         
       {%\hbox{
\csname b@\@citeb\endcsname%}
}}}{#1}}

\newdimen\bibindent
\setlength\bibindent{1.5em}

\def\refname{References}
\newenvironment{thebibliography}[1]
     {\section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

\def\newblock{\hskip .11em\@plus.33em\@minus.07em}

\RequirePackage{apacite}
\let\cite\shortcite 
\let\citeA\shortciteA 

\def\supportinginfo#1{\newpage
{\large\bf\noindent Supporting  Information for\vskip-6pt\noindent``#1''}
\vskip12pt}

\pagenumbering{arabic}
\widowpenalty=10000
\clubpenalty=10000
\ifdraft
\RaggedRight
\fi
\endinput















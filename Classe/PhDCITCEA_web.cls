%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PhDCITCEA v2.0																																									%
% by Daniel Montesinos <daniel.montesinos@upc.edu>																								%
% Version 2.0																																											%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Classe/PhDCITCEA_web}[2008/01/30 v2.0 PhDCITCEA class]

% Constructed from koma-scipt scrreprt classe
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax
\LoadClass[b5paper,BCOR7mm,DIVcalc,twoside,openright,cleardoubleplain,chapterprefix,appendixprefix,liststotoc,bibtotoc, abstracton,pointlessnumbers]{scrreprt}

\renewcommand*{\partpagestyle}{empty}

% Used packages
\usepackage{amsmath,amssymb}
\usepackage{booktabs}
\usepackage[spanish,catalan,english]{babel}
\usepackage[latin1]{inputenc}
\usepackage[pdftex,
            plainpages = false,
            pdfpagelabels, 
            pdfpagelayout = SinglePage,
            bookmarks,
            bookmarksopen = true,
            bookmarksnumbered = true,
            breaklinks = true,
            linktocpage,
            pagebackref,
            colorlinks = true,
            linkcolor = black,
            urlcolor  = black,
            citecolor = black,
            anchorcolor = black,
            hyperindex = true,
            hyperfigures
            ]{hyperref} 
\usepackage[pdftex]{graphicx}
%\usepackage{wrapfig}
\usepackage{tcolorbox}
\pdfcompresslevel=9
\usepackage{subfigure}
\usepackage{rotating}
\usepackage{multirow}

%\usepackage[a4,center,cam,odd,axes]{crop} % for the print version
%\usepackage[a4,center]{crop} % for the print version
\usepackage[b5,center]{crop} %for the web version

\usepackage{lscape}

\newcommand*{\@university}{}
\newcommand{\university}[1]{\gdef\@university{#1}}
\newcommand*{\@department}{}
\newcommand{\department}[1]{\gdef\@department{#1}}
\newcommand*{\@logouniversity}{}
\newcommand{\logouniversity}[1]{\gdef\@logouniversity{#1}}
\newcommand*{\@logodepartment}{}
\newcommand{\logodepartment}[1]{\gdef\@logodepartment{#1}}
\newcommand*{\@partone}{}
\newcommand{\partone}[1]{\gdef\@partone{#1}}
\newcommand*{\@parttwo}{}
\newcommand{\parttwo}[1]{\gdef\@parttwo{#1}}
\newcommand*{\@advisorone}{}
\newcommand{\advisorone}[1]{\gdef\@advisorone{#1}}
\newcommand*{\@advisortwo}{}
\newcommand{\advisortwo}[1]{\gdef\@advisortwo{#1}}
\newcommand*{\@place}{}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand*{\@examinerone}{}
\newcommand{\examinerone}[1]{\gdef\@examinerone{#1}}
\newcommand*{\@examinertwo}{}
\newcommand{\examinertwo}[1]{\gdef\@examinertwo{#1}}
\newcommand*{\@examinerthree}{}
\newcommand{\examinerthree}[1]{\gdef\@examinerthree{#1}}
\newcommand*{\@reviewerone}{}
\newcommand{\reviewerone}[1]{\gdef\@reviewerone{#1}}
\newcommand*{\@reviewertwo}{}
\newcommand{\reviewertwo}[1]{\gdef\@reviewertwo{#1}}
\newcommand*{\@affone}{}
\newcommand{\affone}[1]{\gdef\@affone{#1}}
\newcommand*{\@afftwo}{}
\newcommand{\afftwo}[1]{\gdef\@afftwo{#1}}
\newcommand*{\@affthree}{}
\newcommand{\affthree}[1]{\gdef\@affthree{#1}}
\newcommand*{\@afffour}{}
\newcommand{\afffour}[1]{\gdef\@afffour{#1}}
\newcommand*{\@afffive}{}
\newcommand{\afffive}[1]{\gdef\@afffive{#1}}
\newcommand*{\@affsix}{}
\newcommand{\affsix}[1]{\gdef\@affsix{#1}}
%%% From File: scrktitl.dtx
\if@titlepage
  \renewcommand*\maketitle[1][1]{%
    \begin{titlepage}
      \setcounter{page}{#1}%
      \let\footnotesize\small
      \let\footnoterule\relax
      \let\footnote\thanks
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark
      \renewcommand*{\@makefnmark}{\rlap\@oldmakefnmark}%
      \ifx\@extratitle\@empty \else
        \noindent\@extratitle\next@tpage\cleardoubleemptypage
        \thispagestyle{empty}%
      \fi
%       \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative %%%%%%%%%%%%%%%%%%%% canvi
      \begin{minipage}[t]{\textwidth}
      	\begin{center}
      		{\sc\Large\@university\par}
      		\vspace{3mm}
      		{\sc\Large\@department\par}
      		\vspace{6mm}
      		{\@logouniversity\par}
      		\vspace{3mm}
      		{\@logodepartment\par $ $\\}
%      		\vspace{3mm}
      	\end{center}
      \end{minipage}
      \vfill
      \begin{center}
        {\ifx\@subject\@empty\else\subject\Large\titlefont\textbf{Doctoral Thesis}\par\fi $ $\\} %@font %%%%%%%%%%CANVI \@subject
        \vspace{3mm}
        {\titlefont\Huge\@title\par $ $\\}
        \vfill
        {\ifx\@partone\@empty\else\Large\@partone\par\fi} %\usekomafont{subtitle}
        {\ifx\@parttwo\@empty\else\Large\@parttwo\par\fi} %\usekomafont{subtitle}
        {\ifx\@subtitle\@empty\else\Large\par\fi} %\usekomafont{subtitle} %%%%%%%%%\@subtitle
        \vfill
        {\ifx\@advisortwo\@empty
        \begin{tabular}[t]{ll}
            \Large Author: & \@author \\ \\
            \Large Adviser: & \Large\textbf{\@advisorone}
        \end{tabular}
        \else
        \begin{tabular}[t]{c}
            \Large \titlefont \textbf{\@author}\\ $ $\\ $ $\\
   %         & \\
%            \Large Advisors: & \large \textbf{\@advisorone} \\
%           & \\
%             					    & \large\textbf{\@advisortwo}
        \end{tabular}
        \fi}
    \end{center}
        \vfill
        \begin{minipage}[b]{\textwidth}
              	Thesis advisors:\\
              	{\@advisorone} {\@affone}\\
              	{\@advisortwo} {\@afftwo}\\
        \end{minipage}
        \begin{minipage}[b]{\textwidth}
        	Examination Commitee:\\
        	{\@examinerone} {\@affthree}\\
        	{\@examinertwo} {\@affone}\\
        	{\@examinerthree} {\@afffour}\\
        \end{minipage}
        \begin{minipage}[b]{\textwidth}
           	Thesis reviewers:\\
            {\@reviewerone} {\@afffive}\\
            {\@reviewertwo} {\@affsix}\\
        \end{minipage}
        \begin{minipage}[b]{\textwidth}
        	\@place, \@date
        \end{minipage}
      %{\ifx\@publishers\@empty\else\Large\@publishers\par\fi}
      
      %{\ifx\@thanks\@empty\else \vskip 3em \par\@thanks\fi}
      \if@twoside\next@tpage
        \begin{minipage}[t]{\textwidth}
          \@uppertitleback
        \end{minipage}\par
        \vfill
        \begin{minipage}[b]{\textwidth}
          \@lowertitleback
        \end{minipage}
      \fi
      \ifx\@dedication\@empty\else
        \next@tpage\null\vfill
        {\centering\Large\@dedication\par}%
        \vskip \z@ \@plus3fill
        \if@twoside \next@tpage\cleardoubleemptypage \fi
      \fi
    \end{titlepage}
    \setcounter{footnote}{0}%
    \global\let\thanks\relax
    \global\let\maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\@subtitle\@empty
    \global\let\@extratitle\@empty
    \global\let\@titlehead\@empty
    \global\let\@subject\@empty
    \global\let\@publishers\@empty
    \global\let\@uppertitleback\@empty
    \global\let\@lowertitleback\@empty
    \global\let\@dedication\@empty
    \global\let\author\relax
    \global\let\title\relax
    \global\let\extratitle\relax
    \global\let\titlehead\relax
    \global\let\subject\relax
    \global\let\publishers\relax
    \global\let\uppertitleback\relax
    \global\let\lowertitleback\relax
    \global\let\dedication\relax
    \global\let\date\relax
    \global\let\and\relax
  }
\else
  \newcommand*\maketitle[1][1]{\par
    \@tempcnta=#1\relax\ifnum\@tempcnta=1\else
      \ClassWarning{\KOMAClassName}{%
        Optional argument of \string\maketitle\space ignored
        at\MessageBreak
        notitlepage-mode%
      }%
    \fi
    \begingroup
      \renewcommand*\thefootnote{\@fnsymbol\c@footnote}%
      \let\@oldmakefnmark\@makefnmark
      \renewcommand*{\@makefnmark}{\rlap\@oldmakefnmark}
      \if@twocolumn
        \ifnum \col@number=\@ne
          \@maketitle
        \else
          \twocolumn[\@maketitle]%
        \fi
      \else
        \newpage
        \global\@topnum\z@
        \@maketitle
      \fi
      \thispagestyle{\titlepagestyle}\@thanks
    \endgroup
    \setcounter{footnote}{0}%
    \let\thanks\relax
    \let\maketitle\relax
    \let\@maketitle\relax
    \global\let\@thanks\@empty
    \global\let\@author\@empty
    \global\let\@date\@empty
    \global\let\@title\@empty
    \global\let\@subtitle\@empty
    \global\let\@extratitle\@empty
    \global\let\@titlehead\@empty
    \global\let\@subject\@empty
    \global\let\@publishers\@empty
    \global\let\@uppertitleback\@empty
    \global\let\@lowertitleback\@empty
    \global\let\@dedication\@empty
    \global\let\author\relax
    \global\let\title\relax
    \global\let\extratitle\relax
    \global\let\titlehead\relax
    \global\let\subject\relax
    \global\let\publishers\relax
    \global\let\uppertitleback\relax
    \global\let\lowertitleback\relax
    \global\let\dedication\relax
    \global\let\date\relax
    \global\let\and\relax
  }
\fi
\renewcommand*{\@maketitle}{%
  \clearpage
  \let\footnote\thanks
  \ifx\@extratitle\@empty \else
    \noindent\@extratitle \next@tpage \if@twoside \null\next@tpage \fi
  \fi
  \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
  \ifx\@titlehead\@empty \else
    \begin{minipage}[t]{\textwidth}
      \@titlehead
    \end{minipage}\par
  \fi
  \null
  \vskip 2em%
  \begin{center}%
    \ifx\@subject\@empty \else
      {\subject@font \@subject \par}
      \vskip 1.5em
    \fi
    {\titlefont\Large \@title \par}%
    \vskip .5em
    {\ifx\@subtitle\@empty\else\@subtitle\par\fi}%\usekomafont{subtitle}
    \vskip 1em
    {\Large
      \lineskip .5em%
      \begin{tabular}[t]{c}
        \@author
      \end{tabular}\par
    }%
    \vskip 1em%
    {\Large \@date \par}%
    \vskip \z@ \@plus 1em
    {\Large \@publishers \par}
    \ifx\@dedication\@empty \else
      \vskip 2em
      {\Large \@dedication \par}
    \fi
  \end{center}%
  \par
  \vskip 2em
}

\newenvironment{acknowledgements}{%
	\titlepage
	\null\vfil
	\@beginparpenalty\@lowpenalty
		\begin{center}
			\normalfont\sectfont\nobreak Acknowledgements % A canviar en funcio de l'idioma de la tesi.
			\@endparpenalty\@M
			\end{center}}

% Nomenclature
\usepackage{nomencl}
\makenomenclature
\renewcommand\nomgroup[1]{%
	\ifthenelse{\equal{#1}{A}}{%
	\item[\textbf{Roman symbols}] }{%						A - Roman
		\ifthenelse{\equal{#1}{G}}{%
		\item[\textbf{Greek symbols}]}{%					G - Greek
			\ifthenelse{\equal{#1}{R}}{%
			\item[\textbf{Superscripts}]}{%					R - Superscripts
				\ifthenelse{\equal{#1}{S}}{%
				\item[\textbf{Subscripts}]}{{%				S - Subscripts
					\ifthenelse{\equal{#1}{X}}{%
					\item[\textbf{Other symbols}]}{{%		X - Other Symbols
						\ifthenelse{\equal{#1}{Z}}{%
						\item[\textbf{Acronyms}]}%				Z - Acronyms
							{{}}}}}}}}}}


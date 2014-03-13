% -------------------------------------------------------------
% start of file `resume.cls'.
% Copyright 2014 Thomas Yuhci Zou (thomas.zyc@hotmail.com).
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License version 1.3c,
% available at http://www.latex-project.org/lppl/.
% -------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2014/03/10 resume document class]
\ProcessOptions\relax
%------------------------
% Required packages
%------------------------
\LoadClass[a4paper,10pt,UTF8]{ctexart} % Default paper size and font size and Chinese support
\RequirePackage{marvosym} % Allows the use of symbols
\RequirePackage[top=0.3in, bottom=0.3in,left=1in,right=1in]{geometry} % Margin formatting of the A4 paper
\RequirePackage[compact]{titlesec} % Allows customising the section headings
\titlespacing{\section}{0pt}{0pt}{0pt} % Spacing around sections
\titleformat{\section}{\color{color1}\large\bfseries\raggedright}{}{0em}{}[\titlerule] % Text formatting of sections
\RequirePackage{xcolor} % Required for specifying custom colors
\RequirePackage{url}
\RequirePackage{xunicode}
\RequirePackage{parskip}
\RequirePackage{xltxtra}
\RequirePackage[unicode]{hyperref} % unicode is required for unicode pdf metadata
\RequirePackage{tabularx}


%------------------------
% Definition of colors
%------------------------
\definecolor{color0}{rgb}{0,0,0} % black
\definecolor{color1}{rgb}{0.22,0.45,0.70} % light blue
\definecolor{color2}{rgb}{0.45,0.45,0.45} % dark grey

%------------------------
% Definition of symbols
%------------------------
\newcommand*{\mobilesymbol}{\Large\Mobilefone~}
\newcommand*{\infosymbol}{\Large\Gentsroom~}
\newcommand*{\emailsymbol}{\Large\Letter~}
\newcommand*{\homepagesymbol}{\Large\Mundus~}

%-----------------------------
% Definition of elements
%-----------------------------
\newcommand*{\name}[1]{\def\@name{#1}} 
\newcommand*{\resumetitle}[1]{\def\@title{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\info}[1]{\def\@info{#1}}
\newcommand*{\homepage}[2]{\def\@homepage{#1}\def\@homepagetitle{#2}} % the first argument is the url, the second argument is the content displayed.

%-------------------------------
% Definition of element styles
%-------------------------------
\newcommand{\namestyle}[1]{\textcolor{color1}{\textbf{#1}}}
\newcommand{\titlestyle}[1]{\mdseries\upshape\textcolor{color2}{~|~#1}}
\newcommand{\elementstyle}[1]{\normalsize\upshape\mdseries\textcolor{color2}{#1}}
\newcommand{\homepagestyle}[2]{\normalsize\upshape\mdseries\textcolor{color2}{\href{#1}{#2}}}
\newcommand{\emailstyle}[2]{\normalsize\upshape\mdseries\textcolor{color2}{\href{mailto:#1}{#2}}}

%-----------------------------
% Overall style definitions
%-----------------------------
\newcommand{\makeresumetitle}{
  \parbox{0.9\textwidth}{
    \centering
    \Huge 
    \namestyle{\@name}
    \titlestyle{\@title} \\
    \elementstyle{\mobilesymbol\normalsize\@mobile\Large\textbullet}
    \emailstyle{\@email}{\emailsymbol\normalsize\@email} \\
    \elementstyle{\infosymbol\normalsize\@info\Large\textbullet}
    \homepagestyle{\@homepage}{\homepagesymbol\normalsize\@homepagetitle} \\
  }
}

\newcommand{\eduentry}[4]{
  \noindent
  \begin{tabularx}{\textwidth}{@{}lX@{}}
    \emph{#1} & \textbf{#2~} \textbf{#3} \hfill \textbf{#4}
  \end{tabularx}
}

\newcommand{\entry}[5]{ % start date | end date | company | title | department or additional info
  \noindent
  \begin{tabularx}{\textwidth}{@{}p{4.235em}|X@{}}
    \emph{#2} & \textbf{#3} \hfill \textbf{#4} \\
    \emph{#1} & \emph{#5} \\ 
  \end{tabularx}
}

\newcommand{\resumeitem}[2]{
  \begin{tabularx}{\textwidth}{@{}l#2X@{}}
  \hspace{4.235em} & \footnotesize\textbullet {#1}
  \end{tabularx}
}

\newcommand{\skillitem}[2]{
  \noindent
  \begin{tabularx}{\textwidth}{p{5em}l}
  \emph{#1:} & #2
  \end{tabularx}
}


\endinput


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

%------------------------
% Required packages
%------------------------
\LoadClass[a4paper,10pt]{ctexart} % Default paper size and font size and Chinese support
\RequirePackage{marvosym} % Allows the use of symbols
\RequirePackage[top=0.3in, bottom=0.3in,left=1in,right=1in]{geometry} % Margin formatting of the A4 paper
\RequirePackage{titlesec} % Allows customising the section headings
\RequirePackage{xcolor} % Required for specifying custom colors
\RequirePackage{url}
\RequirePackage{xunicode} 
\requirePackage[unicode]{hyperref} % unicode is required for unicode pdf metadata


%------------------------
% Definition of colors
%------------------------
\definecolor{color0}{rgb}{0,0,0} % black
\definecolor{color1}{rgb}{0.22,0.45,0.70} % light blue
\definecolor{color2}{rgb}{0.45,0.45,0.45} % dark grey

%------------------------
% Definition of symbols
%------------------------
\newcommand*{\mobilesymbol}{\marvosymbol{72}~}
\newcommand*{\phonesymbol}{\marvosymbol{84}~}
\newcommand*{\emailsymbol}{\marvosymbol{66}~}
\newcommand*{\homepagesymbol}{{\Large\marvosymbol{205}}~} % Can also use \Mundus symbol

%-----------------------------
% Definition of elements
%-----------------------------
\newcommand*{\name}[1]{\def\@name{#1}} 
\newcommand*{\title}[1]{\def\@title{#1}}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\homepage}[2]{\def\@homepage{#1}\def\@homepagetitle{#2}} % the first argument is the url, the second argument is the content displayed.

%-----------------------------
% Overall style definitions
%-----------------------------
\renewcommand*{\maketitle}{
  parbox{0.9\textwidth}{
    \centering
    \Huge
    

	
}




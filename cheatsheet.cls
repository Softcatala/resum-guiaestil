%------------------------------------------------------------------------------
% Definition
%------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}

% Inherit options of extarticle
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{extarticle}
}
\ProcessOptions\relax
\LoadClass{extarticle}

%------------------------------------------------------------------------------
% Packages
%------------------------------------------------------------------------------
% Layout
\RequirePackage{geometry}
% Header and footer
\RequirePackage{fancyhdr}
% Graphic
\RequirePackage{tikz}
% Fonts
\RequirePackage{pslatex}
% Multiple columns
\RequirePackage{multicol}
% Code
\RequirePackage{listings}
% Hyperlink
\RequirePackage{hyperref}
% Paragraph
\RequirePackage{parskip}
\RequirePackage{svg}

%------------------------------------------------------------------------------
% Colors
%------------------------------------------------------------------------------
\definecolor{innoinnored}{RGB}{174,0,16}
\definecolor{innoinnobggray}{RGB}{250,252,253}
\definecolor{innoinnofggray}{RGB}{214,213,218}

%------------------------------------------------------------------------------
% Commands
%------------------------------------------------------------------------------
\newcommand*{\cheatsheettitle}[1]{\def\@cheatsheettitle{#1}}
\newcommand*{\cheatsheetsectiontitle}[1]{
  \vspace{3mm}
  \textbf{\Huge\color{innoinnored} #1}
}
\newcommand*{\cheatsheetsection}[1]{
  \vspace{1mm}
  \textbf{\Large\color{innoinnored} #1}
}
\newcommand*{\cheatsheetsubsection}[1]{
  \vspace{1mm}
  \textbf{\color{innoinnored} #1}
}

\newcommand*{\cheatsheetfooter}[2]{
  \small\textit{#1\newline\url{#2}}
}

%------------------------------------------------------------------------------
% Page layout
%------------------------------------------------------------------------------
% Page margins
\geometry{a4paper, landscape, left=7mm, right=7mm, bottom=10mm, top=22mm}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer
\fancyhf{}
\pagestyle{fancy}

\usetikzlibrary{calc}
\fancyhead[C]{
  \begin{tikzpicture}[overlay, remember picture]
    \fill[innoinnored] (current page.north west) rectangle ($(current page.north east)+(0,-14mm)$);
    \node[anchor=north west, text=white, font=\Huge, minimum size=15mm, inner xsep=6mm] at (current page.north west) {\@cheatsheettitle};
    \node[anchor=north east, minimum size=14mm, inner xsep=6mm] at (current page.north east) {\includesvg[scale=.090]{images/sc.svg}};
  \end{tikzpicture}
}

%------------------------------------------------------------------------------
% Text
%------------------------------------------------------------------------------
% Paragraph indentation
\setlength{\parindent}{0pt}
% Paragraph
\setlength{\parskip}{0.75\baselineskip plus 2pt}
% Item indentation
\setlength\itemindent{25pt}

%------------------------------------------------------------------------------
% Multicolumns
%------------------------------------------------------------------------------
\setlength{\columnseprule}{.05mm}
\setlength{\columnsep}{1cm}
\def\columnseprulecolor{\color{innoinnofggray}}

%------------------------------------------------------------------------------
% Hyperlink
%------------------------------------------------------------------------------
\hypersetup{
  colorlinks=true,
  linkcolor=innoinnored,
  urlcolor=innoinnored,
}
\urlstyle{same}

%------------------------------------------------------------------------------
% Code
%------------------------------------------------------------------------------
\lstset{
  belowcaptionskip=1\baselineskip,
  frame=single,
  xleftmargin=2mm,
  xrightmargin=2mm,
  backgroundcolor=\color{innoinnobggray},
  rulecolor=\color{innoinnofggray},
  basicstyle=\small\ttfamily,
  framesep=2mm,
  aboveskip=5mm,
  belowskip=0mm,
}

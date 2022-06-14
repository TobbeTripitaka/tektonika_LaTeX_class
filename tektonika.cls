% Identification
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tektonika}[2022/06/12 Tektonika paper]

\ProcessOptions\relax
\LoadClass[10pt,twoside,a4paper]{article}

% Font
\RequirePackage[default]{opensans}

% Page set up
\RequirePackage[top=20mm,
    bottom=25mm,
    left=25mm,
    right=25mm,
    headheight=17pt,
    includefoot,
    heightrounded]{geometry} 
\renewcommand{\baselinestretch}{1.15}
\setlength{\columnsep}{7mm}
\RequirePackage{lastpage}

% Title and section set up
\RequirePackage{titlesec} 
\titleformat{\section}{\large \bfseries \raggedright}{\thesection}{2mm}{}
\titleformat{\subsection}{\bfseries \itshape \raggedright}{\thesubsection}{2mm}{}
\titleformat{\subsubsection}{\itshape \raggedright}{\thesubsubsection}{2mm}{}
\renewcommand{\thesubsubsection}{\emph{\thesubsection.\arabic{subsubsection}}}

% Author set up
\RequirePackage[affil-sl]{authblk} 
\setcounter{Maxaffil}{3}
\renewcommand\Affilfont{\itshape\small}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% Hyperlink set up
\RequirePackage{hyperref} 
\RequirePackage{xcolor} 
\definecolor{PUSblue}{HTML}{005FA8}
\hypersetup{colorlinks = true, 
			citecolor = black, % OK? 
			linkcolor=PUSblue,
			urlcolor  = PUSblue}
\urlstyle{same}

% Language set up
\RequirePackage{lipsum} 
\RequirePackage[pangram]{blindtext}
\RequirePackage{fancyhdr}
\RequirePackage[english]{babel}



% Math/Equation set up
\RequirePackage{sfmath, amsmath, textgreek} 
\RequirePackage[font=small,labelfont=bf]{caption}

% Figures and tables
\RequirePackage{graphicx, svg, booktabs, longtable} 


% Bibliography
\RequirePackage[sectionbib,elide]{natbib}
\bibliographystyle{apalike}
\setlength{\bibsep}{0.0pt}


% Line numbers
\RequirePackage{lineno}
\linenumbers % Enable line numbers to facilitate review process (compile twice).


% Abstract
\RequirePackage{abstract}
\renewcommand{\abstractname}{}
\renewcommand{\abstractnamefont}{\normalfont \large \bfseries}

% % Headers/footers
\newcommand{\journal}{Tektonika} 

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE]{\shortTitle}
\fancyhead[RE]{\sc \FirstAuthor, \ \Year}
\fancyhead[LO]{\journal, \vol}
\fancyhead[RO]{\doi}
\rfoot{\thepage~of \pageref*{LastPage}}

% First page header and footer
\fancypagestyle{firststyle}
{
   \fancyhf{}
   \fancyhead{ \includesvg[width=\textwidth]{article_banner.svg}}
   \renewcommand{\footrulewidth}{0.4pt}
   \rfoot{\thepage~of \pageref*{LastPage}}
   \lfoot{\small{\journal, \vol\\\doi}}
%   \cfoot{\setlength{\parindent}{5cm}{\small{\raggedright{\dSubmitted\\\dAccepted\\\dOnline}}}}
}


% Format title 
\makeatletter         
\renewcommand\maketitle{
{\raggedright 
\begin{center}
\vspace*{1ex} 
{\LARGE \Title}\\[2ex] 
{\large \AllAuthors}\\[1ex] 
{\Affiliation}\\
{\CorrEmail}\\[3ex] 
\end{center}}} 
\makeatother

% Format Abstract
\renewenvironment{abstract}{%
{\centering
  \textbf{\large{Abstract}}\\[1ex] 
}
\bfseries
}


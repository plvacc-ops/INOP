% Preamble
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{inop}

% Options
\RequirePackage{kvoptions}
\DeclareStringOption[XXXX.R]{revision}
\ProcessKeyvalOptions*
\DeclareOption*{%
\PassOptionsToClass{\CurrentOption}{scrbook}%
}
\ProcessOptions\relax

\newcommand{\revision}{\inop@revision}

% Loading base class
\LoadClass[
    oneside,
    headings=small,
    appendixprefix=true,
    numbers=noenddot,
    parskip=half,
    headings=normal,
    ]{scrbook}

% Loading packages
\RequirePackage[
    paper=a4paper,
    margin=1.27cm,
    includeheadfoot
]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[default]{lato}
\RequirePackage[
    hidelinks,
    breaklinks,
    pdftex,
    pdfauthor={Polish VACC},
    pdftitle={vFIR Warszawa Operations Manual},
    pdfcreator={pdflatex}
    ]{hyperref}
\RequirePackage[dvipsnames,table]{xcolor}
\RequirePackage[leftbars,pdftex,xcolor]{changebar}
\RequirePackage{amsmath}
\RequirePackage{cleveref}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage{tikz}
\RequirePackage{tikzpagenodes}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{tcolorbox}
%\RequirePackage[auto]{chappg}
\RequirePackage{fontawesome5}
\RequirePackage[headsepline, plainheadsepline,footsepline, plainfootsepline]{scrlayer-scrpage}
\RequirePackage{enumitem}

%% Package configurations
\graphicspath{{img/}}
\tcbuselibrary{skins, breakable}
\usetikzlibrary{calc, positioning, shadows, shadings}
\cbcolor{black}
% Colour definitions
\definecolor{vred}{RGB}{192,0,0}%
\definecolor{vpink}{RGB}{219,166,166}%

\renewcommand{\labelitemi}{---}
\renewcommand{\labelitemii}{---}
\renewcommand{\labelitemiii}{---}
\renewcommand{\labelitemiv}{---}

\newcommand\titlerule[1][1pt]{\rule{\textwidth}{#1}}

\renewcommand\chapterlinesformat[3]{%
  \titlerule\par\nobreak%
  \@hangfrom{#2}{#3}%
  \par\nobreak\titlerule%
}

\renewcommand\sectionlinesformat[4]{%
  \par\nobreak%
  \@hangfrom{#3}{#4}\\%
  \nobreak\titlerule%
}

% Font definitions
\addtokomafont{chapter}{%
    \color{vred}
}
\addtokomafont{section}{%
    \color{vred}
}
\addtokomafont{subsection}{%
    \color{vred}
}
\setkomafont{pageheadfoot}{%
    \normalfont\normalcolor
}

\pagestyle{scrheadings}

\ihead[{\includegraphics[height=0.43cm]{logo.png}}]{\includegraphics[height=0.43cm]{logo.png}}
\chead[\textbf{vFIR WARSZAWA OPERATIONS MANUAL}]{\textbf{vFIR WARSZAWA OPERATIONS MANUAL}}
\ohead[Page \pagemark]{Page \pagemark}

\ifoot[{\includegraphics[height=0.43cm]{logo.png}}]{\includegraphics[height=0.43cm]{logo.png}}
\cfoot[\textbf{FOR VATSIM USE ONLY}]{\textbf{FOR VATSIM USE ONLY}}
\ofoot[Revision: \revision]{Revision: \revision}

\setcounter{tocdepth}{1}

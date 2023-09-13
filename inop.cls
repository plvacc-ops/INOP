% Preamble
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{inop}[Polish vACC Operational Manual]

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
    a4paper,yy
    oneside,
    headsepline=true,
    footsepline=true,
    headings=small,
    appendixprefix=true,
    numbers=noenddot,
    parskip=half,
    headings=normal,
    ]{scrbook}

% Loading packages
\RequirePackage[T1]{fontenc}
\RequirePackage[default]{lato}
\RequirePackage[hidelinks,breaklinks]{hyperref}
\RequirePackage{cleveref}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage[dvipsnames,table]{xcolor}
\RequirePackage{subcaption}
\RequirePackage{tikz}
\RequirePackage{tikzpagenodes}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{longtable}
\RequirePackage{tcolorbox}
\RequirePackage[auto]{chappg}
\RequirePackage{fontawesome5}
\RequirePackage[headsepline,footsepline]{scrlayer-scrpage}

%% Package configurations
\graphicspath{{img/}}
\tcbuselibrary{skins, breakable}
\usetikzlibrary{calc}
% Colour definitions
\definecolor{vred}{RGB}{192,0,0}%
\definecolor{vpink}{RGB}{219,166,166}%

\renewcommand{\labelitemi}{---}
\renewcommand{\labelitemii}{---}
\renewcommand{\labelitemiii}{---}
\renewcommand{\labelitemiv}{---}

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
\chead[\textbf{INOP FIR WARSZAWA}]{\textbf{INOP FIR WARSZAWA}}
\ohead[Page \pagemark]{Page \pagemark}

\ifoot[{\includegraphics[height=0.43cm]{logo.png}}]{\includegraphics[height=0.43cm]{logo.png}}
\cfoot[\textbf{FOR VATSIM USE ONLY}]{\textbf{FOR VATSIM USE ONLY}}
\ofoot[Revision: \revision]{Revision: \revision}

\setcounter{tocdepth}{0}

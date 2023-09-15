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
\RequirePackage[headsepline, plainheadsepline,footsepline, plainfootsepline]{scrlayer-scrpage}
\RequirePackage{enumitem}

%% Package configurations
\graphicspath{{img/}}
\tcbuselibrary{skins, breakable}
\usetikzlibrary{calc, positioning, shadows, shadings}
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

% Created by Jon Sundin
\RequirePackage[dvipsnames]{xcolor} % moved here I guess article class causes option clash with xcolor if used after loading the class
\LoadClass[11pt]{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jon-sundin-cv}[2024/10/04 Jon Sundin CV Class]
\RequirePackage{lmodern} % Use Latin Modern fonts
\RequirePackage{etoolbox}
\RequirePackage{pgffor}
\RequirePackage{titlesec}
\RequirePackage{tikz}
\RequirePackage[left=0.5in, top=0.05in, right=0.5in, bottom=0.0in]{geometry} % DOCUMENT MARGINS
\RequirePackage{hyperref}
\RequirePackage{fontawesome}
\RequirePackage{mfirstuc}
\RequirePackage{ifthen}
\RequirePackage{lipsum}
\RequirePackage{array}
\usepackage{booktabs}
\pagestyle{empty}

\usepackage{comment}

% Setup
\newcommand*{\setname}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\setmobile}[1]{\def\@mobile{#1}}
\newcommand*{\setposition}[1]{\def\@position{#1}}
\newcommand*{\setmail}[1]{\def\@mail{#1}}
\newcommand*{\setcitizenship}[1]{\def\@citizenship{#1}}
\newcommand*{\setthemecolor}[1]{\def\@themecolor{#1}}
\newcommand*{\setlinkedinaccount}[1]{\def\@linkedinaccount{#1}}
\newcommand*{\setgithubaccount}[1]{\def\@githubaccount{#1}}
\newcommand*{\setportfolioaccount}[1]{\def\@portfolioaccount{#1}}

\hypersetup{
    colorlinks=true,
    urlcolor=NavyBlue, % URL COLOR!
}

% Header
\newcommand\headerview{
\hfill
\begin{minipage}{0.95\linewidth} % extend header length here
    \center \name \\[0.05cm] 
    \contact % address \ mobile \\ mail
\end{minipage}
\hfill
}

\newcommand{\linkedinview}{\href{\@linkedinaccount}{\footnotesize linkedin}}
\newcommand{\githubview}{\href{\@githubaccount}{\footnotesize github}}
\newcommand{\portfolioview}{\href{\@portfolioaccount}{\footnotesize portfolio}}

\newcommand{\name}{%
    {\LARGE \color{\@themecolor} \@firstname \ \textsc{\@lastname}}
}

\newcommand{\contact}{%
    {\small \@mail \ \cpshalf \@mobile \ \cpshalf {\@citizenship} %
    \\%
    \linkedinview\hspace{0.25em}\cpshalf\hspace{0.25em}\githubview\hspace{0.25em}\cpshalf\hspace{0.25em}\portfolioview\\ 
    } % 
}


% Helper commands
\newcommand\ruleafter[1]{#1~{\color{black!60!\@themecolor}\hrulefill}} % a trick to put the line with <before> parameter in \titleformat

%colorful pipe separator
\newcommand{\cps}{{\color{\@themecolor} \quad\textbar\quad}}
\newcommand{\cpshalf}{{\color{\@themecolor} \textbar\hspace{0.2em}}}
\newcommand{\coloredbullet}{{\color{\@themecolor} \textbullet}}

% Edit section styles
\titleformat{\section}      % Customise the \section command 
  {\large\bfseries\scshape\raggedright\color{\@themecolor}} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {\ruleafter}                 % Can be used to insert code before the heading

\titlespacing*{\section}{-1pt}{-10pt}{0pt}

% Textview commands
\newcommand{\experience}[2]{%
  \mbox { \hspace{1em} \scshape \textbf{#1} }%
}

\newcommand{\datetext}[1]{%
{\itshape  \footnotesize \mdseries  \color{black} #1 } 
}

\newcommand{\datetextbold}[1]{%
{\footnotesize \mdseries  \color{black} \textbf{#1} } 
}

\newcommand{\datedexperience}[2]{%
  \begin{small} \mbox { \hspace{1em} \textbf{#1} } \end{small} \hfill \datetextbold{#2}\\[0.01cm] %
}

\newcommand{\explanation}[2]{%
    \mbox { \hspace{1.2em} \footnotesize \emph{#1}} \hfill \datetext{#2}\\[0.01cm] %
}

\newcommand{\explanationdetail}[1]{%
    \indent \indent \begin{minipage}{0.87\linewidth} \footnotesize #1 \end{minipage} \\[0.1cm]
}
%-------------------------------------------
% yesrabresume.cls (Enhanced Navy Edition)
%-------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yesrabresume}[2026/04/17 Enhanced Navy Resume Class]

%----------BASE CLASS----------
\LoadClass[letterpaper,11pt]{article}

%----------PACKAGES----------
\RequirePackage[empty]{fullpage}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{tabularx}
\RequirePackage{geometry}
\RequirePackage{fontawesome5}
\RequirePackage{xcolor}
\RequirePackage{microtype}
\RequirePackage{setspace}

%----------GEOMETRY----------
\geometry{
  top=0.45in,
  bottom=0.45in,
  left=0.55in,
  right=0.55in
}

%----------NAVY COLOR SYSTEM----------
\definecolor{primary}{HTML}{0B1F3A}      % Deep Navy
\definecolor{primaryDark}{HTML}{071526}  % Darker Navy
\definecolor{primarySoft}{HTML}{2C4A73}  % Soft Navy Accent
\definecolor{accent}{HTML}{3E6EA8}       % Link Blue
\definecolor{muted}{HTML}{6B7280}        % Soft Gray
\definecolor{rulecolor}{HTML}{C5D3E0}    % Light divider

%----------PAGE STYLE----------
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

%----------HYPERLINK----------
\hypersetup{
  colorlinks=true,
  urlcolor=accent,
  linkcolor=accent
}

%----------TYPOGRAPHY----------
\raggedright
\setlength{\parindent}{0pt}
\setlength{\tabcolsep}{0in}

%----------SECTION STYLE----------
\titleformat{\section}{
  \vspace{-4pt}
  \color{primary}\large\bfseries\scshape
}{}{0em}{}[
  \vspace{2pt}
  {\color{primarySoft}\titlerule[1pt]}
  \vspace{-6pt}
]

%----------NAME----------
\newcommand{\resumeName}[1]{%
  {\Huge\bfseries\color{primaryDark} #1}%
}

%----------CONTACT----------
\newcommand{\resumeContact}[1]{%
  \vspace{4pt}
  {\small\color{muted} #1}
}

\newcommand{\citem}[2]{\faIcon{#1}~\href{#2}{\color{accent}#2}}
\newcommand{\cphone}[1]{\faIcon{phone}~#1}
\newcommand{\cemail}[1]{\faIcon{envelope}~\href{mailto:#1}{\color{accent}#1}}

%----------SUMMARY----------
\newcommand{\resumeSummary}[1]{%
  \vspace{6pt}
  {\small #1}
  \vspace{4pt}
}

%----------SUBHEADING----------
\newcommand{\resumeSubheading}[4]{%
  \vspace{-2pt}\item
  \begin{tabular*}{0.97\textwidth}[t]{l@{\extracolsep{\fill}}r}
    \textbf{\color{primary}#1} & {\small\color{muted}#2} \\
    \textit{\small\color{primarySoft}#3} & \textit{\small\color{muted}#4} \\
  \end{tabular*}\vspace{-6pt}
}

%----------PROJECT----------
\newcommand{\resumeProjectHeading}[2]{%
  \item
  \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
    \small\textbf{\color{primary}#1} & {\small\color{muted}#2} \\
  \end{tabular*}\vspace{-6pt}
}

%----------ITEMS----------
\newcommand{\resumeItem}[1]{%
  \item\small{#1\vspace{-2pt}}
}

\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}

%----------LISTS----------
\newcommand{\resumeSubHeadingListStart}{
  \begin{itemize}[leftmargin=0.15in, label={}]
}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}

\newcommand{\resumeItemListStart}{
  \begin{itemize}[leftmargin=0.2in, itemsep=2pt, topsep=3pt]
}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-4pt}}

%----------HEADER----------
\newcommand{\makeResumeHeader}[5]{%
  \begin{center}
    \resumeName{#1} \\[6pt]
    \small
    \cphone{#2} \quad {\color{rulecolor}|} \quad
    \cemail{#3} \quad {\color{rulecolor}|} \quad
    \faGithub~\href{#4}{\color{accent}#4} \quad {\color{rulecolor}|} \quad
    \faGitlab~\href{#5}{\color{accent}#5}
  \end{center}
  \vspace{-6pt}
}
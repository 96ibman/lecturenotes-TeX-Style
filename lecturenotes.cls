% ===================================================================
% LectureNotes Class
% ===================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecturenotes}[2025/08/14 Lecture Notes Class]

% Base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

% -------------------------------------------------------------------
% Core Document Utilities
% -------------------------------------------------------------------

\RequirePackage{graphicx}       % Images
\RequirePackage{booktabs}       % Table rules
\RequirePackage{parskip}        % Paragraph spacing, no indent
\RequirePackage{float}          % [H] placement
\RequirePackage[margin=0.5in]{geometry} % Margins
\RequirePackage{array}          % Table column formats
\RequirePackage{multicol}       % Multi-column layout
\RequirePackage{titling}        % Title spacing
\setlength{\droptitle}{-1in}    % Pull title up

% -------------------------------------------------------------------
% Mathematics, Logic, and Semantics
% -------------------------------------------------------------------

\RequirePackage{amsmath}        % Math
\RequirePackage{amssymb}        % Math symbols
\RequirePackage{mathrsfs}       % \mathscr
\RequirePackage{stmaryrd}       % ⟦ ⟧
\RequirePackage{mathpartir}     % Inference rules
\RequirePackage{semantic}       % Semantics macros

% -------------------------------------------------------------------
% Code, Algorithms, and Styling
% -------------------------------------------------------------------

\RequirePackage{tcolorbox}      % Boxes
\tcbuselibrary{listingsutf8}    % UTF-8 listings

\RequirePackage{algorithm}      % Algorithm float
\RequirePackage{algorithmicx}   % Algorithm framework
\RequirePackage{algpseudocode}  % Pseudocode commands

\RequirePackage{xcolor, soul}   % Colors, highlighting
\RequirePackage[inline]{enumitem} % Inline lists
\RequirePackage{gensymb}        % \degree etc.

% -------------------------------------------------------------------
% Bibliography and Hyperlinks
% -------------------------------------------------------------------

\RequirePackage{natbib}         % \citep, \citet
\RequirePackage{hyperref}       % Links
\hypersetup{
    colorlinks,             % Colored text links
    citecolor=teal,         % Citations
    linkcolor=blue,         % Cross-references
    urlcolor=magenta        % URLs
}

% -------------------------------------------------------------------
% Custom Environments and Commands
% -------------------------------------------------------------------
\newcounter{definition}[subsection] % Definition counter resets each subsection
\renewcommand{\thedefinition}{\thesubsection.\arabic{definition}} % Format: sec.subsec.num

\newcommand{\definition}[3]{% Create a numbered definition
    \refstepcounter{definition} % Increment and make it referenceable
    \phantomsection % Anchor for hyperlinks
    \par\noindent
    \textbf{Def~\thedefinition.} \textbf{#1: }#2. % Output label + title + body
    \label{#3} % Assign label for referencing
    \par
}

\newcommand{\refterm}[2]{\phantomsection \label{#2}{\textbf{#1}}} % Anchor a term
\newcommand{\linkterm}[2]{\hyperref[#2]{#1}} % Link to a term

\newcommand{\set}[1]{\{#1\}} % Set notation
\newcommand{\minititle}[1]{\subsubsection*{#1}} % Unnumbered heading
\newcommand{\sint}[1]{\llbracket #1 \rrbracket} % Semantic brackets

\newcommand{\commandnote}[1]{% Shaded note box
    \begin{tcolorbox}[standard jigsaw, title=Note]
        #1
    \end{tcolorbox}
}

\newcommand{\hltext}[1]{\sethlcolor{gray!10}\hl{#1}} % Highlighted inline text

\newtcblisting{codeblock}{ % Shaded code listing
    colback=gray!10, % Background color
    colframe=black!40, % Border color
    listing only, % No text outside listing
    boxrule=0.5pt, % Border thickness
    arc=2pt, % Rounded corners
    left=6pt, right=6pt, top=4pt, bottom=4pt, % Padding
    listing options={
        breaklines=true, % Wrap long lines
        basicstyle=\ttfamily, % Monospace font
        literate={\$}{{\textdollar}}1 % Proper dollar symbol
    }
}

\newcommand{\inlinecode}[1]{\colorbox{gray!10}{\texttt{#1}}} % Inline code snippet

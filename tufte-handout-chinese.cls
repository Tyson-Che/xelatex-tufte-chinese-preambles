\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{tufte-handout-chinese}[2024/09/04 v1.0.0 Tufte-handout class with Chinese support]

% Pass all options to the base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Load the base class
\LoadClass[10pt,twoside]{article}

% Now load packages
\RequirePackage{fix-cm}
\RequirePackage{fontspec}
\RequirePackage{xeCJK}

% Declare we're tufte-handout
\def\@tufte@class{article}% the base LaTeX class (defaults to the article/handout style)
\def\@tufte@pkgname{tufte-handout-chinese}% the name of the package

% Define font sizes
\renewcommand{\normalsize}{\@setfontsize\normalsize\@xpt\@xiipt}
\renewcommand{\small}{\@setfontsize\small\@ixpt\@xipt}
\renewcommand{\footnotesize}{\@setfontsize\footnotesize\@viiipt\@xpt}
\renewcommand{\scriptsize}{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand{\tiny}{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand{\large}{\@setfontsize\large\@xiipt{14}}
\renewcommand{\Large}{\@setfontsize\Large\@xivpt{18}}
\renewcommand{\LARGE}{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand{\huge}{\@setfontsize\huge\@xxpt{25}}
\renewcommand{\Huge}{\@setfontsize\Huge\@xxvpt{30}}

% Load the common style elements
\input{tufte-common-modified.def}

\input{font-setup-open.tex}

% Abstract
\renewenvironment{abstract}
  {\begin{quotation}\if@tufte@sfsidenotes\begin{sffamily}\fi}
  {\if@tufte@sfsidenotes\end{sffamily}\fi\end{quotation}}

% If there is a `tufte-handout-chinese-local.tex' file, load it.
\IfFileExists{tufte-handout-chinese-local.tex}{%
  \input{tufte-handout-chinese-local}%
  \@tufte@info@noline{Loading tufte-handout-chinese-local.tex}%
}{}

\endinput

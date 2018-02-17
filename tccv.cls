% Copyright (C) 2012  Nicola Fontana <ntd at entidi.it>
%
% This program can be redistributed and/or modified under
% the terms of the LaTeX Project Public License, either
% version 1.3 of this license or (at your option) any later
% version. The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all LaTeX distributions
% version 2005/12/01 or later.
%
% Based on the original idea by Alessandro Plasmati found at
% http://www.latextemplates.com/template/two-column-one-page-cv
%
% The most relevant changes from his work are:
%
% * this is a class, not a template document;
% * tccv is based on scrartcl (from Koma-script), not on article;
% * the fonts are selected from the PSNFSS collection, so no
%   custom font installation should be required;
% * heavily based the implementation on custom environments and
%   macros, so the document is much easier to read (and customize);
% * it is plain LaTeX/Koma-script, so the CV can be compiled
%   with the usual tools, latex and pdflatex included.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tccv}
              [2012/11/09 v1.0
 Two Column Curriculum Vitae]

\LoadClass[10pt]{scrartcl}

\setcounter{secnumdepth}{-1}
\RequirePackage[hmargin=1.25cm,vmargin=0.75cm,columnsep=1.25cm]{geometry}
\RequirePackage{bookman,etoolbox,hyperref,marvosym,needspace,tabularx,xcolor}

\pagestyle{empty}
\setlength\parindent{0pt}
\color[HTML]{303030} % Default foreground color
\definecolor{link}{HTML}{4B515D} % Hyperlinks
\hypersetup{colorlinks,breaklinks,urlcolor=link,linkcolor=link}
\setkomafont{disposition}{\color[HTML]{801010}}
\setkomafont{section}{\scshape\Large\mdseries}

% Overrides the \section command for
% word for cosmetic purposes and draws a rule under it.
\makeatletter
\let\old@section\section
\renewcommand\section[2][]{%
    \old@section[#1]{{#2}}%
    \newdimen\raising%
    \raising=\dimexpr-0.2\baselineskip\relax%
    \vskip\raising}
\makeatother

%%
%% End of file `tccv.cls'.

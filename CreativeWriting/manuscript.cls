% ▄▄▄▄                                                        █
% █   ▀▄  ▄▄▄   ▄   ▄   ▄▄▄   ▄ ▄▄    ▄▄▄    ▄▄▄   ▄ ▄▄    ▄▄▄█   ▄▄▄
% █    █ █▀  █  ▀▄ ▄▀  ▀   █  █▀  █  █▀  █  ▀   █  █▀  █  █▀ ▀█  █▀ ▀█
% █    █ █▀▀▀▀   █▄█   ▄▀▀▀█  █   █  █▀▀▀▀  ▄▀▀▀█  █   █  █   █  █   █
% █▄▄▄▀  ▀█▄▄▀    █    ▀▄▄▀█  █   █  ▀█▄▄▀  ▀▄▄▀█  █   █  ▀█▄██  ▀█▄█▀
%
% manuscript.cls
% Copyright 2016 Eduardo Fernandes <edu.fernandes.pt@gmail.com>
%
% Licensed under a Creative Commons Attribution 4.0 International License.
% See https://creativecommons.org/licenses/by/4.0/
%
% Example:
% \documentclass[portuguese,12pt,a4paper,onesize]{manuscript}
%
% Class definition

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{manuscript}[2013/03/23 Creative writing manuscripts class]

% Loads hyphenization and typographic rules for Portuguese
\DeclareOption{english}{\AtEndOfClass{\main@language{english}}}
\DeclareOption{portuguese}{\AtEndOfClass{\main@language{portuges}}}

% Pass options to class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions \relax
\LoadClass[12pt,a4paper,oneside]{book}

% Allows the use of conditionals
\usepackage{ifthen}

% Load the language of the document
\RequirePackage[portuges, english]{babel}

% Allows String comparation
\usepackage{etoolbox}

% Better quality fonts for PS generation
\usepackage{ae,aecompl}

% Sets the document to use Latin Modern fonts
\usepackage{lmodern}

% Allows the document to use colors
\usepackage[RGB]{xcolor}

%Sets single line spacing
\usepackage[singlespacing]{setspace}

% Sets the documento to be UTF8 and allows specials
% chars (accents) to be used
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

% Allows links inside document (only to toc)
\usepackage[bookmarks,
bookmarksopen,
linktocpage=true,
hyperfootnotes=false,
colorlinks=true,
linkcolor=red]{hyperref}



% Sets a fancy title to the chapters
\usepackage{titlesec, blindtext, color}
\definecolor{gray75}{gray}{0.75}
\newcommand{\hsp}{\hspace{20pt}}
\titleformat{\chapter}[hang]{\Huge\bfseries}{\thechapter\hsp\textcolor{violet}{|}\hsp}{0pt}{\Huge\bfseries}

% Change line size of TOC
\usepackage{tocloft}
\setlength\cftparskip{-4pt}
\setlength\cftbeforesecskip{1pt}
\setlength\cftaftertoctitleskip{2pt}

% Disables paragraph identation
\setlength{\parindent}{0cm}

% Adds 0.5cm space after paragraph
\setlength{\parskip}{0.5cm}

% Sets the page to have only the page number
\pagestyle{plain}



% ---------------------------------------------------------------
% ---------------- New Commands ---------------------------------
%
% Command: dialog
% Formats a dialogue excert of text, appending the necessary
% dashes
%
% Parameters
% #1 (Optional): The side where the dash will be appended. The
% three possible options are: l(eft), r(ight) and b(oth). If this
% parameter is ommited, left will be assumed.
%
% #2: The text to be formatted as a dialog
\newcommand{\dialog}[2][l]{%
	\ifstrequal{#1}{r}{\textit{#2} --}%
	{%
		\ifstrequal{#1}{b}{-- \textit{#2} --}%
		{-- \textit{#2}}%
	}%
}%

% Command: think
% Formats a think excert of text, appending the necessary
% dashes and quotation marks.
%
% Parameters
% #1 (Optional): The side where the dash will be appended. The
% four possible options are: l(eft), r(ight), b(oth) and none. If
% parameter is ommited, no dashes will be appended.
%
% #2: The text to be formatted as a thinking
\newcommand{\think}[2][l]{%
	\ifstrequal{#1}{r}{``\textit{#2}'' --}%
	{%
		\ifstrequal{#1}{l}{-- ``\textit{#2}''}%
		{%
			\ifstrequal{#1}{b}{-- ``\textit{#2}'' --}%
			{``\textit{#2}''}%
		}%
	}%
}%

% Command: quotes
% Formats a quotation excert of text, appending the necessary
% dashes and quotation marks.
%
\newcommand{\stopHere}{%
	\chapter{\textcolor{red}{----Revise From Here}}
}%

% Command: quotes
% Formats a quotation excert of text, appending the necessary
% dashes and quotation marks.
%
% Parameters
% #1 (Optional): The side where the dash will be appended. The
% four possible options are: l(eft), r(ight), b(oth) and none. If
% parameter is ommited, no dashes will be appended.
%
% #2: The text to be formatted as a quotation
\newcommand{\quotes}[2][l]{%
	\ifstrequal{#1}{r}{``\textit{#2}'' --}%
	{%
		\ifstrequal{#1}{l}{-- ``\textit{#2}''}%
		{%
			\ifstrequal{#1}{b}{-- ``\textit{#2}'' --}%
			{``\textit{#2}''}%
		}%
	}%
}%

% Command: title
% Defines the title of the document
\renewcommand*{\title}[1]{\def\creativeTitle{#1}}

% Command: author
% Defines the author of the document
\renewcommand*{\author}[1]{\def\creativeAuthor{#1}}

% Command: email
% Defines the email of the author of the document
\newcommand*{\email}[1]{\def\creativeEmail{#1}}

% Command: makeFirstPage
% Creates the first page of the document
\newcommand{\makeFirstPage}{%
	\begin{titlepage}%
		\begin{center}%
			\large{\creativeAuthor\\}%%
			\small{\href{mailto:\creativeEmail}{\creativeEmail}\\[2in]}%
			{\huge\scshape{\creativeTitle\\}}%
			\today
			\vfill
		\end{center}%
	\end{titlepage}%
}%

% Command: makeToc
% Creates the table of contents of the document
\newcommand{\makeToc}{%
	\cleardoublepage
	\pagenumbering{gobble}
	\tableofcontents
	\cleardoublepage
	\pagenumbering{arabic}%
}%

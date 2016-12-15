% ·▄▄▄▄  ▄▄▄ . ▌ ▐· ▄▄▄·  ▐ ▄ ▄▄▄ . ▄▄▄·  ▐ ▄ ·▄▄▄▄        
% ██▪ ██ ▀▄.▀·▪█·█▌▐█ ▀█ •█▌▐█▀▄.▀·▐█ ▀█ •█▌▐███▪ ██ ▪     
% ▐█· ▐█▌▐▀▀▪▄▐█▐█•▄█▀▀█ ▐█▐▐▌▐▀▀▪▄▄█▀▀█ ▐█▐▐▌▐█· ▐█▌ ▄█▀▄ 
% ██. ██ ▐█▄▄▌ ███ ▐█ ▪▐▌██▐█▌▐█▄▄▌▐█ ▪▐▌██▐█▌██. ██ ▐█▌.▐▌
% ▀▀▀▀▀•  ▀▀▀ . ▀   ▀  ▀ ▀▀ █▪ ▀▀▀  ▀  ▀ ▀▀ █▪▀▀▀▀▀•  ▀█▄▀▪
%
% creativeWriting.cls
% Copyright 2016 Eduardo Fernandes <edu.fernandes.pt@gmail.com>
%
% This is a base custom class, based on the book class, to allow easy creation of manuscripts
% for Novels, short-novels, articles and other kind of fiction.
%
% Licensed under a Creative Commons Attribution 4.0 International License.
% See https://creativecommons.org/licenses/by/4.0/
%
% Example:
% \documentclass{creativeWriting}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{creativeWriting}[2016/11/28 Character class]

% ●▬▬▬▬▬๑۩ Base class ۩๑▬▬▬▬▬●

\LoadClass[12pt,a4paper,oneside]{book}
\usepackage{creativeWriting}

% ●▬▬▬▬▬๑۩ Page options ۩๑▬▬▬▬▬●

%Sets single line spacing
\usepackage[singlespacing]{setspace}

% Disables paragraph identation
\setlength{\parindent}{0cm}

% Adds 0.5cm space after paragraph
\setlength{\parskip}{0.5cm}

% ●▬▬▬▬▬๑۩ Languages options ۩๑▬▬▬▬▬●

% Load the language of the document
\RequirePackage[portuges, english]{babel}

% Sets the documento to be UTF8 and allows specials
% chars (accents) to be used
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

% ●▬▬▬▬▬๑۩ Colors options ۩๑▬▬▬▬▬●

% Allows the document to use colors
\usepackage{color}
\usepackage[RGB]{xcolor}
\definecolor{IndianRed}{RGB}{205,92,92}
\definecolor{IndianRed1}{RGB}{255,106,106}
\definecolor{IndianRed2}{RGB}{238,99,99}
\definecolor{IndianRed3}{RGB}{205,92,92}
\definecolor{IndianRed4}{RGB}{139,58,58}

% ●▬▬▬▬▬๑۩ Other formatting options ۩๑▬▬▬▬▬●

% Better quality fonts for PS generation
\usepackage{ae,aecompl}

% Allows to use hyperlinks
\usepackage{hyperref}

% Sets the document to use Latin Modern fonts
\usepackage{lmodern}

% Necessary to tweak titles, headers and footers
\usepackage{fancyhdr,microtype,fourier,cabin,titlesec,blindtext}

% ●▬▬▬▬▬๑۩ Custom commands ۩๑▬▬▬▬▬●

% Used only for format of the title. Just ignore it.
\newcommand{\hsp}{\hspace{20pt}}

% Changes the format of the chapter title and make it fancy and colorfull
\titleformat{\chapter}
    [hang]
    {\color{IndianRed4}\scshape\Huge\bfseries}
    {\thechapter\hsp\textcolor{IndianRed4}{|}\hsp}
    {0pt}
    {\scshape\Huge\bfseries}
    
% Changes the format of the section title and make it fancy and colorfull
\titleformat{\section}
    [hang]
    {\color{IndianRed3}\scshape\Large\bfseries}
    {}
    {2pt}
    {\scshape\Large\bfseries}
    [{\titlerule[0.8pt]}]
    
% Changes the format of the subsection title and make it fancy and colorfull
\titleformat{\subsection}
    [hang]
    {\color{IndianRed2}\scshape\bfseries}
    {}
    {0pt}
    {\scshape\bfseries}

% ·▄▄▄▄  ▄▄▄ . ▌ ▐· ▄▄▄·  ▐ ▄ ▄▄▄ . ▄▄▄·  ▐ ▄ ·▄▄▄▄        
% ██▪ ██ ▀▄.▀·▪█·█▌▐█ ▀█ •█▌▐█▀▄.▀·▐█ ▀█ •█▌▐███▪ ██ ▪     
% ▐█· ▐█▌▐▀▀▪▄▐█▐█•▄█▀▀█ ▐█▐▐▌▐▀▀▪▄▄█▀▀█ ▐█▐▐▌▐█· ▐█▌ ▄█▀▄ 
% ██. ██ ▐█▄▄▌ ███ ▐█ ▪▐▌██▐█▌▐█▄▄▌▐█ ▪▐▌██▐█▌██. ██ ▐█▌.▐▌
% ▀▀▀▀▀•  ▀▀▀ . ▀   ▀  ▀ ▀▀ █▪ ▀▀▀  ▀  ▀ ▀▀ █▪▀▀▀▀▀•  ▀█▄▀▪
%
% scriptWriting.cls
% Copyright 2016 Eduardo Fernandes <edu.fernandes.pt@gmail.com>
%
% This is a base custom class, based on the book class, to allow easy creation of manuscripts
% for Novels, short-novels, articles and other kind of fiction.
%
% Licensed under a Creative Commons Attribution 4.0 International License.
% See https://creativecommons.org/licenses/by/4.0/
%
% Example:
% \documentclass{scriptWriting}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{scriptWriting}[2016/12/15 scriptWriting class]

% ●▬▬▬▬▬๑۩ Base class ۩๑▬▬▬▬▬●

\LoadClass[12pt,a4paper,oneside]{book}
\usepackage{scriptWriting}
\usepackage{creativeImages}

% ●▬▬▬▬▬๑۩ Page options ۩๑▬▬▬▬▬●

%Sets single line spacing
\usepackage[singlespacing]{setspace}

% Disables paragraph identation
\setlength{\parindent}{0cm}

% Adds 0.5cm space after paragraph
\setlength{\parskip}{0.5cm}

\usepackage[margin=0.7in]{geometry}

% ●▬▬▬▬▬๑۩ Languages options ۩๑▬▬▬▬▬●

% Load the language of the document
\RequirePackage[portuges, english]{babel}

% Sets the documento to be UTF8 and allows specials
% chars (accents) to be used
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

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

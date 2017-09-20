# Latex
A set of custom made Latex classes and packages.

## Installation

Install Latex

    sudo apt-get install --assume-yes --quiet \
    texlive-full latexila xzdec

Initialize the latex configuration

    tlmgr init-usertree
    mkdir -p ${HOME}/texmf/tex/latex/

Clone the repository

    git clone git@github.com:psicofrenia/Latex.git ${HOME}/Latex
  
Add latex classes

    ln -s ${HOME}/Latex/CreativeWriting ${HOME}/texmf/tex/latex/CreativeWriting

## License

[Attribution-NonCommercial-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-nc-sa/4.0/)
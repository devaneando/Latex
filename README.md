# Latex
A set of custom made Latex classes and packages.

## Installation

Clone the repository

```
cd
git clone git@github.com:psicofrenia/Latex.git 
```

Initialize the latex configuration

```
sudo apt-get install tlmgr
tlmgr init-usertree
# If you have problems with the initialization, execute the line below
# and repeat the last command.
tlmgr option repository ftp://tug.org/historic/systems/texlive/2015/tlnet-final
tlmgr update --all
```

Link the package to your configuration folder

```
cd texmf/tex/latex/
ln -s ~Latex/CreativeWriting/
```

## License

[Attribution-NonCommercial-ShareAlike 4.0 International](http://creativecommons.org/licenses/by-nc-sa/4.0/)
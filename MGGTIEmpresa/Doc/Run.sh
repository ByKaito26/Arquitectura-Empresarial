#!/usr/bin/env sh

pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex

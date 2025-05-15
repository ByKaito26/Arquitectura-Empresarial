#!/usr/bin/env sh

pdflatex DocumentacionProyecto.tex
bibtex DocumentacionProyecto
pdflatex DocumentacionProyecto.tex
pdflatex DocumentacionProyecto.tex

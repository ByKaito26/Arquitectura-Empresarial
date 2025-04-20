#!/usr/bin/env sh

lualatex --shell-escape sample.tex
biber sample
lualatex --shell-escape sample.tex
lualatex --shell-escape sample.tex

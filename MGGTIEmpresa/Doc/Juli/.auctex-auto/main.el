;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "main"
 (lambda ()
   (LaTeX-add-environments
    '("abstract" LaTeX-env-args ["argument"] 0)))
 :latex)


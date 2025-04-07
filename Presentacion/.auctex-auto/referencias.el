;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "referencias"
 (lambda ()
   (LaTeX-add-bibitems
    "MinTIC2021"
    "MinTIC2021marco"
    "MinTIC2021guiaimplementacion"
    "bermejo2023claves"))
 '(or :bibtex :latex))


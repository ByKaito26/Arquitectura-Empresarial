;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "referencias"
 (lambda ()
   (LaTeX-add-bibitems
    "Plaquet23"
    "Bredin23"
    "radford2022robustspeechrecognitionlargescale"
    "youtube"))
 '(or :bibtex :latex))


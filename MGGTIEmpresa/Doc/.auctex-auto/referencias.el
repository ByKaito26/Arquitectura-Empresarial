;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "referencias"
 (lambda ()
   (LaTeX-add-bibitems
    "mintic_estrategia_2022"
    "mintic_gobierno_2022"
    "mintic_sistemas_2022"
    "mintic_informacion_2022"
    "mintic_servicios_2022"
    "mintic_apropiacion_2022"))
 '(or :bibtex :latex))


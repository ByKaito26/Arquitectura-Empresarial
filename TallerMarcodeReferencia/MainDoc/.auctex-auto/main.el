;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "") ("amsthm" "") ("amssymb" "") ("amsfonts" "") ("thmtools" "") ("graphicx" "") ("setspace" "") ("geometry" "") ("float" "") ("hyperref" "hidelinks") ("inputenc" "utf8") ("babel" "spanish") ("framed" "") ("xcolor" "dvipsnames") ("tcolorbox" "") ("tikz" "") ("caption" "") ("longtable" "") ("pdflscape" "") ("svg" "") ("subcaption" "") ("multirow" "") ("array" "") ("listings" "") ("cancel" "") ("import" "")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "amsmath"
    "amsthm"
    "amssymb"
    "amsfonts"
    "thmtools"
    "graphicx"
    "setspace"
    "geometry"
    "float"
    "hyperref"
    "inputenc"
    "babel"
    "framed"
    "xcolor"
    "tcolorbox"
    "tikz"
    "caption"
    "longtable"
    "pdflscape"
    "svg"
    "subcaption"
    "multirow"
    "array"
    "listings"
    "cancel"
    "import")
   (TeX-add-symbols
    '("HRule" 1)
    "newline")
   (LaTeX-add-thmtools-declaretheoremstyles
    "thmsty"
    "prosty"
    "prcpsty")
   (LaTeX-add-thmtools-declaretheorems
    "theorem"
    "proposition"
    "principle")
   (LaTeX-add-xcolor-definecolors
    "LightGray"
    "LightOrange"
    "LightGreen")
   (LaTeX-add-array-newcolumntypes
    "L"
    "C"
    "R")
   (LaTeX-add-listings-lstdefinestyles
    "bashstyle"
    "javastyle"))
 :latex)


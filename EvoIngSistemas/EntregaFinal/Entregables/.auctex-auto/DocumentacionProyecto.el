;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "DocumentacionProyecto"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "") ("amsthm" "") ("amssymb" "") ("amsfonts" "") ("thmtools" "") ("graphicx" "") ("setspace" "") ("geometry" "") ("float" "") ("hyperref" "hidelinks") ("inputenc" "utf8") ("babel" "spanish" "es-nodecimaldot") ("framed" "") ("xcolor" "dvipsnames") ("tcolorbox" "") ("tikz" "") ("caption" "") ("longtable" "") ("pdflscape" "") ("svg" "") ("subcaption" "") ("multirow" "") ("array" "") ("listings" "") ("cancel" "") ("xurl" "") ("import" "") ("enumitem" "")))
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
    "xurl"
    "import"
    "enumitem")
   (TeX-add-symbols
    '("HRule" 1)
    "newline"))
 :latex)


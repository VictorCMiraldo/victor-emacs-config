;; My latex-mode config
;;

;; Pre-requisites
(require 'mmm-auto)
(require 'latex)

;; Make sure we look at lhs files as latex
(add-to-list 'auto-mode-alist '("\\.lhs$" . LaTeX-mode))

;; ** Configuring Latex-mode inside Literate Haskell mode
;;

(mmm-add-classes
  '((literate-haskell-latex
    :submode haskell-mode
    :front "^\\\\begin{code}\n"
    :back "^\\\\end{code}"
  )))

(setq mmm-global-mode 'maybe)
(mmm-add-mode-ext-class 'LaTeX-mode nil 'literate-haskell-latex)

;; Now we turn on reftex
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

;; I like my TOC vertical
(setq reftex-toc-split-windows-horizontally t)
(setq reftex-toc-keep-other-windows t)
(setq reftex-toc-include-labels t)
(setq reftex-toc-max-level 3)

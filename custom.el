(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start nil)
 '(ac-delay 0.4)
 '(ac-trigger-key "TAB")
 '(agda2-fontset-name "DejaVu Sans Mono 13")
 '(agda2-program-args (quote ("--sharing")))
 '(agda2-program-name "agda")
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("4528fb576178303ee89888e8126449341d463001cb38abe0015541eb798d8a23" "7a4efa993973000e5872099a3c24c310b8bb2568b70f3b9d53675e6edf1f3ce4" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(evil-auto-indent nil)
 '(evil-shift-width 1)
 '(evil-snipe-scope (quote visible))
 '(global-column-enforce-mode t)
 '(global-linum-mode t)
 '(haskell-interactive-popup-errors nil)
 '(haskell-literate-default (quote tex))
 '(haskell-process-args-cabal-repl (quote ("--ghc-option='-ferror-spans +RTS -M12G -RTS'")))
 '(haskell-process-args-ghci (quote ("+RTS -M12G -RTS")))
 '(haskell-process-args-stack-ghci
   (quote
    ("--ghci-options=-fshow-loaded-modules -ferror-spans +RTS -M12G -RTS" "--allow-different-user")))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-path-cabal "cabal")
 '(haskell-process-suggest-remove-import-lines nil)
 '(haskell-process-type (quote auto))
 '(haskell-tags-on-save nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(linum-relative-current-symbol "")
 '(linum-relative-global-mode t)
 '(neo-autorefresh nil)
 '(neo-hidden-regexp-list
   (quote
    ("^\\." "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "\\.agdai")))
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t)
     ("" "grffile" t)
     ("" "longtable" nil)
     ("" "wrapfig" nil)
     ("" "rotating" nil)
     ("normalem" "ulem" t)
     ("" "amsmath" t)
     ("" "textcomp" t)
     ("" "amssymb" t)
     ("" "hyperref" nil))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa-stable" . "http://stable.melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (helm-projectile projectile helm helm-ebdb dash auctex unicode-fonts undo-tree org neotree mmm-mode haskell-mode git-timemachine auto-complete)))
 '(standard-indent 2)
 '(tab-always-indent t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-highlight-catchall-clause-face ((t (:slant italic))))
 '(agda2-highlight-coverage-problem-face ((t (:underline (:color "wheat" :style wave)))))
 '(agda2-highlight-field-face ((t (:foreground "#8CD083"))))
 '(agda2-highlight-number-face ((t (:foreground "tomato1"))))
 '(agda2-highlight-postulate-face ((t (:foreground "plum"))))
 '(agda2-highlight-primitive-face ((t (:foreground "orchid"))))
 '(agda2-highlight-record-face ((t (:foreground "#8CD0D3"))))
 '(column-enforce-face ((t (:underline (:color "medium orchid" :style wave)))))
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "SteelBlue1" :weight bold))) t)
 '(powerline-active2 ((t (:inherit mode-line :background "gray30" :foreground "white"))))
 '(powerline-active3 ((t (:inherit mode-line :background "gray40" :foreground "white")))))


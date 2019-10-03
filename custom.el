(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-auto-save t)
 '(TeX-file-extensions
   (quote
    ("tex" "sty" "cls" "ltx" "texi" "txi" "texinfo" "dtx" "lhs")))
 '(TeX-one-master "\\.\\(texi?\\|dtx\\|lhs\\)$")
 '(ac-auto-start nil)
 '(ac-delay 0.4)
 '(ac-disable-inline nil)
 '(ac-expand-on-auto-complete nil)
 '(ac-ignore-case nil)
 '(ac-trigger-key "TAB")
 '(ac-use-comphist t)
 '(agda2-fontset-name "DejaVu Sans Mono 13")
 '(agda2-program-args nil)
 '(agda2-program-name "agda")
 '(column-number-mode t)
 '(completion-styles (quote (emacs22)))
 '(custom-safe-themes
   (quote
    ("4528fb576178303ee89888e8126449341d463001cb38abe0015541eb798d8a23" "7a4efa993973000e5872099a3c24c310b8bb2568b70f3b9d53675e6edf1f3ce4" default)))
 '(custom-theme-directory "~/.emacs.d/themes/")
 '(display-buffer-alist
   (quote
    (("*Shell Command Output*"
      (display-buffer-reuse-window display-buffer-below-selected)
      (window-height . 8)))))
 '(evil-auto-indent nil)
 '(evil-shift-width 1)
 '(evil-snipe-scope (quote visible))
 '(global-column-enforce-mode t)
 '(global-linum-mode t)
 '(haskell-indent-offset 2)
 '(haskell-interactive-popup-errors nil)
 '(haskell-literate-default (quote tex))
 '(haskell-process-args-cabal-repl (quote ("--ghc-option='-ferror-spans +RTS -M12G -RTS'")))
 '(haskell-process-args-ghci (quote ("+RTS -M12G -RTS" "-fshow-loaded-modules")))
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
 '(reftex-file-extensions (quote (("tex" ".tex" ".ltx" ".lhs") ("bib" ".bib"))))
 '(reftex-include-file-commands (quote ("include" "input" "lhsinclude")))
 '(reftex-try-all-extensions t)
 '(standard-indent 2)
 '(tab-always-indent t)
 '(tool-bar-mode nil)
 '(unicode-fonts-block-font-mapping
   (quote
    (("Aegean Numbers"
      ("Noto Sans Symbols" "Aegean" "Symbola" "Quivira" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ahom"
      ("AhomUnicode"))
     ("Alchemical Symbols"
      ("Noto Sans Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Alphabetic Presentation Forms"
      ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Cardo" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Ancient Greek Musical Notation"
      ("Cardo" "Noto Sans Symbols" "Aegean" "New Athena Unicode" "Musica" "Symbola" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Greek Numbers"
      ("Noto Sans Symbols" "Apple Symbols" "New Athena Unicode" "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Symbols"
      ("Noto Sans Symbols" "Analecta" "New Athena Unicode" "Cardo" "Aegean" "Quivira" "Symbola" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Arabic Mathematical Alphabetic Symbols"
      ("Amiri"))
     ("Arrows"
      ("DejaVu Sans Mono" "Apple Symbols" "Cambria Math" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Arial Unicode MS" "BabelStone Modern" "Symbola" "Quivira" "Code2000" "Noto Sans Symbols" "Everson Mono:weight=bold" "FreeMono"))
     ("Bamum Supplement"
      ("Noto Sans Bamum"))
     ("Block Elements"
      ("DejaVu Sans Mono" "Noto Sans Symbols" "FreeMono" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "BabelStone Modern" "Symbola" "Quivira" "Code2000" "Everson Mono:weight=bold"))
     ("Box Drawing"
      ("DejaVu Sans Mono" "FreeMono" "DejaVu Sans" "Everson Mono" "Quivira" "Code2000" "Noto Sans Symbols" "Segoe UI Symbol" "Symbola"))
     ("Byzantine Musical Symbols"
      ("Noto Sans Symbols" "Musica" "Symbola" "FreeSerif"))
     ("Combining Diacritical Marks"
      ("Monaco" "Consolas" "Noto Sans" "Cambria Math" "Charis SIL" "Doulos SIL" "Courier New" "DejaVu Sans:width=condensed" "DejaVu Sans Mono" "Cardo" "Code2000" "Gentium Plus" "Junicode" "Tahoma" "Microsoft Sans Serif" "Arial" "Quivira" "Symbola" "Everson Mono" "FreeMono" "Arial Unicode MS" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks Extended"
      ("Monlam Uni Sans Serif"))
     ("Combining Diacritical Marks Supplement"
      ("Cardo" "FreeSerif" "Junicode" "Doulos SIL" "DejaVu Sans:width=condensed" "Noto Sans" "Segoe UI" "Code2000" "Everson Mono" "ALPHABETUM Unicode"))
     ("Combining Diacritical Marks for Symbols"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Code2000" "Everson Mono" "Arial Unicode MS"))
     ("Combining Half Marks"
      ("Consolas" "DejaVu Sans:width=condensed" "Everson Mono:weight=bold" "Symbola"))
     ("Common Indic Number Forms"
      ("Noto Sans Kaithi" "Nirmala UI" "Siddhanta"))
     ("Control Pictures"
      ("Apple Symbols" "BabelStone Modern" "Noto Sans Symbols" "Segoe UI Symbol" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Coptic"
      ("Noto Sans Coptic" "Antinoou" "New Athena Unicode" "Segoe UI Historic" "Segoe UI Symbol" "Quivira" "Analecta" "Nilus" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Coptic Epact Numbers"
      ("Nilus" "Symbola"))
     ("Counting Rod Numerals"
      ("WenQuanYi Zen Hei Mono" "Noto Sans Symbols" "BabelStone Modern" "Symbola" "Quivira" "Apple Symbols" "Code2001"))
     ("Cuneiform"
      ("Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform" "Akkadian"))
     ("Cuneiform Numbers and Punctuation"
      ("Akkadian" "Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform"))
     ("Currency Symbols"
      ("Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Consolas" "Noto Sans Symbols" "Noto Sans" "Segoe UI" "Apple Symbols" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Cyrillic"
      ("Consolas" "Monaco" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Courier New" "Calibri" "Microsoft Sans Serif" "Code2000" "Arial Unicode MS" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Charcoal CY" "Geneva CY" "ALPHABETUM Unicode"))
     ("Domino Tiles"
      ("DejaVu Sans:width=condensed" "Symbola" "Quivira" "Segoe UI Symbol" "Noto Sans Symbols" "Code2001" "Everson Mono:weight=bold"))
     ("Emoticons"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Enclosed Alphanumeric Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Symbola" "Quivira" "BabelStone Han" "BabelStone Modern"))
     ("Enclosed Alphanumerics"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Junicode" "Arial Unicode MS" "Symbola" "Quivira" "Code2000" "BabelStone Han" "WenQuanYi Zen Hei Mono" "BabelStone Modern" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Enclosed Ideographic Supplement"
      ("Segoe UI Symbol" "Noto Sans Symbols" "HanaMinA" "BabelStone Han" "Symbola"))
     ("General Punctuation"
      ("Monaco" "Apple Symbols" "Segoe UI Symbol" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Antinoou" "Symbola" "Code2000" "Quivira" "Noto Sans" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Geometric Shapes"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Segoe UI Symbol" "Arial Unicode MS" "Symbola" "Noto Sans Symbols" "Quivira" "BabelStone Modern" "Everson Mono" "FreeMono" "Code2000"))
     ("Geometric Shapes Extended"
      ("Symbola" "Quivira"))
     ("Gothic"
      ("Noto Sans Gothic" "Segoe UI Historic" "Segoe UI Symbol" "Analecta" "Junicode" "Sadagolthina" "MPH 2B Damase" "FreeSerif" "Code2001" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Greek Extended"
      ("Consolas" "DejaVu Sans Mono" "Courier New" "Antinoou" "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode" "New Athena Unicode" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Arial Unicode MS" "Arial" "Tahoma" "Aegean" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Greek and Coptic"
      ("Consolas" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Antinoou" "Noto Sans" "Segoe UI Historic" "Segoe UI Symbol" "New Athena Unicode" "Calibri" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Lucida Console" "Arial Unicode MS" "Cardo" "Aegean" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "Noto Sans Coptic"))
     ("Halfwidth and Fullwidth Forms"
      ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Apple Symbols" "Quivira" "Code2000" "HAN NOM A"))
     ("Hebrew"
      ("Miriam Fixed" "Ezra SIL" "Ezra SIL SR" "Arial Hebrew" "Raanana" "New Peninim MT" "Aharoni" "David" "FrankRuehl" "Gisha" "Levenim MT" "Narkisim" "Rod" "Cardo" "Courier New" "Adobe Hebrew" "Code2000" "Aramaic Imperial Yeb" "Microsoft Sans Serif" "Tahoma" "Lucida Sans Unicode" "Arial Unicode MS" "Arial" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Hiragana"
      ("Osaka:spacing=m" "MS Gothic" "MS Mincho" "MingLiU" "Hiragino Kaku Gothic Pro" "Meiryo" "Arial Unicode MS" "HanaMinA" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
     ("Ideographic Description Characters"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "AppleMyungjo" "HanaMinA" "HAN NOM A" "Quivira" "DFKai-SB" "Code2000"))
     ("IPA Extensions"
      ("Monaco" "Consolas" "DejaVu Sans Mono" "Courier New" "Noto Sans" "Arial Unicode MS" "Arial" "Tahoma" "Microsoft Sans Serif" "Aboriginal Sans" "Cardo" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono" "Code2000" "ALPHABETUM Unicode"))
     ("Kangxi Radicals"
      ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "Meiryo" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HanaMinA" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "AppleMyungjo" "Apple Symbols" "Code2000"))
     ("Latin Extended-C"
      ("DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Noto Sans" "Cambria Math" "Gentium Plus" "Charis SIL" "Doulos SIL" "Code2000" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-D"
      ("FreeMono" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Charis SIL" "Doulos SIL" "Junicode" "Cardo" "Quivira" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-E"
      ("Quivira" "Everson Mono:weight=bold" "HanaMinA"))
     ("Letterlike Symbols"
      ("Monaco" "Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Symbola" "Quivira" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Linear A"
      ("Aegean"))
     ("Linear B Ideograms"
      ("Noto Sans Linear B" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase"))
     ("Linear B Syllabary"
      ("Noto Sans Linear B" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase" "Penuturesu"))
     ("Lydian"
      ("Segoe UI Historic" "Noto Sans Lydian" "Aegean" "Quivira" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Mathematical Alphanumeric Symbols"
      ("Cambria Math" "Noto Sans Symbols" "Code2001" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Mathematical Operators"
      ("Monaco" "DejaVu Sans Mono" "Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed" "Noto Sans Symbols" "Apple Symbols" "Arial Unicode MS" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Miscellaneous Mathematical Symbols-A"
      ("Noto Sans Symbols" "Apple Symbols" "Segoe UI Symbol" "Code2000" "Symbola" "Quivira" "Cambria Math" "Everson Mono:weight=bold"))
     ("Miscellaneous Mathematical Symbols-B"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "Code2000" "Symbola" "Quivira"))
     ("Miscellaneous Symbols"
      ("Noto Sans Symbols" "Segoe UI Symbol" "Apple Symbols" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Symbola" "Quivira" "MS Reference Sans Serif" "Cardo" "Code2000" "Everson Mono:weight=bold"))
     ("Miscellaneous Symbols and Arrows"
      ("Symbola" "Quivira" "Code2000" "Segoe UI Symbol" "Noto Sans Symbols"))
     ("Miscellaneous Symbols and Pictographs"
      ("Apple Color Emoji" "Segoe UI Symbol" "Symbola" "Quivira"))
     ("Miscellaneous Technical"
      ("Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Cambria Math" "DejaVu Sans Mono" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Modifier Tone Letters"
      ("Apple Symbols" "Noto Sans Symbols" "Gentium Plus" "Code2000" "Quivira" "Charis SIL" "Doulos SIL" "DejaVu Sans Mono"))
     ("Musical Symbols"
      ("Noto Sans Symbols" "Musica" "FreeSerif" "Symbola" "Quivira"))
     ("Number Forms"
      ("DejaVu Sans:width=condensed" "Arial Unicode MS" "Junicode" "Symbola" "Quivira" "Charis SIL" "Doulos SIL" "Code2000" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Old Italic"
      ("Segoe UI Historic" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Cardo" "New Athena Unicode" "Aegean" "Noto Sans Old Italic" "Albanian" "Code2001" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Optical Character Recognition"
      ("Apple Symbols" "Segoe UI Symbol" "Noto Sans Symbols" "Arial Unicode MS" "Symbola" "Quivira" "FreeMono" "BabelStone Modern" "Code2000" "Everson Mono"))
     ("Phonetic Extensions"
      ("Monaco" "Consolas" "Calibri" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "Courier New" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Phonetic Extensions Supplement"
      ("Consolas" "Calibri" "Courier New" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Playing Cards"
      ("DejaVu Sans:width=condensed" "Symbola" "Noto Sans Symbols" "Segoe UI Symbol" "Quivira"))
     ("Small Form Variants"
      ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "Microsoft YaHei" "Microsoft YaHei UI" "Code2000"))
     ("Specials"
      ("BabelStone Modern" "Noto Sans Symbols" "Apple Symbols" "Arial Unicode MS" "Symbola" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Quivira" "FreeMono" "BabelStone Han"))
     ("Superscripts and Subscripts"
      ("Consolas" "Monaco" "Apple Symbols" "Cambria Math" "DejaVu Sans Mono" "DejaVu Sans:width=condensed" "Segoe UI Symbol" "Charis SIL" "Doulos SIL" "Symbola" "Quivira" "Everson Mono:weight=bold" "FreeMono"))
     ("Supplemental Arrows-A"
      ("Segoe UI Symbol" "Cambria Math" "DejaVu Sans:width=condensed" "Quivira" "Symbola" "Apple Symbols" "Noto Sans Symbols" "Code2000" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Supplemental Arrows-B"
      ("Cambria Math" "Segoe UI Symbol" "Apple Symbols" "Noto Sans Symbols" "Quivira" "Symbola" "Code2000" "Everson Mono:weight=bold"))
     ("Supplemental Arrows-C"
      ("Symbola"))
     ("Supplemental Mathematical Operators"
      ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
     ("Supplemental Punctuation"
      ("DejaVu Sans Mono" "Segoe UI Symbol" "Noto Sans Symbols" "Antinoou" "New Athena Unicode" "Cardo" "Aegean" "Symbola" "Quivira" "Everson Mono:weight=bold" "Code2000" "ALPHABETUM Unicode"))
     ("Supplemental Symbols and Pictographs"
      ("Symbola"))
     ("Tags"
      ("BabelStone Modern" "BabelStone Han"))
     ("Variation Selectors"
      ("BabelStone Modern" "BabelStone Han" "Code2000"))
     ("Variation Selectors Supplement"
      ("BabelStone Modern" "BabelStone Han"))
     ("Vedic Extensions"
      ("Siddhanta"))
     ("Vertical Forms"
      ("Microsoft YaHei" "Microsoft YaHei UI" "Symbola"))))))
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
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "SteelBlue1" :weight bold))))
 '(powerline-active2 ((t (:inherit mode-line :background "gray30" :foreground "white"))))
 '(powerline-active3 ((t (:inherit mode-line :background "gray40" :foreground "white"))))
 '(powerline-evil-normal-face ((t (:inherit powerline-evil-base-face :background "red"))))
 '(powerline-evil-operator-face ((t (:inherit powerline-evil-operator-face :background "midnight blue"))))
 '(powerline-evil-replace-face ((t (:inherit powerline-evil-base-face :background "black")))))


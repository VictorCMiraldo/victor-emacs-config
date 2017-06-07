;; Emacs packages configuration
;;
;; Before anythingv we need package utils.
(require 'package)

;; And we initialize our elpa packages BEFORE
;; running the init file.
(package-initialize)
(setq package-enable-at-startup nil)

;; Packages required by us are:
(require 'org)
(require 'neotree)
(require 'mmm-auto)
(require 'haskell-mode)
(require 'latex)
(require 'auto-complete)

;; * Manual packages management
;;
;; find agda mode
(load-file (let ((coding-system-for-read 'utf-8))
	     (shell-command-to-string "agda-mode locate")))


;; add load paths
(add-to-list 'load-path "~/.emacs.d/manual/evil-1.2.12")
(add-to-list 'load-path "~/.emacs.d/manual/goto-chg-1.6")
(add-to-list 'load-path "~/.emacs.d/manual/powerline-2.4")
(add-to-list 'load-path "~/.emacs.d/manual/linum-relative-0.5")
(add-to-list 'load-path "~/.emacs.d/manual/evil-snipe-2.0.6")
(add-to-list 'load-path "~/.emacs.d/manual/evil-surround-0.1")
(add-to-list 'load-path "~/.emacs.d/manual/mybuffers")

(require 'goto-chg)
(require 'powerline)
(require 'linum-relative)
(require 'evil)
(require 'evil-surround)
(require 'evil-snipe)

;; Evil mode with powerline
(evil-mode 1)
(powerline-evil-theme)
(global-evil-surround-mode 1)
(evil-snipe-override-mode 1)
 
;; Make sniping easy by making [ and ] match all open-close-goodies.
(push '(?\[ "[[{(]") evil-snipe-aliases)
(push '(?\] "[]})]") evil-snipe-aliases)

;; swaps ':' with ';'
;; (with-eval-after-load 'evil-maps
;;   (define-key evil-motion-state-map (kbd ":") 'evil-repeat-find-char)
;;   (define-key evil-motion-state-map (kbd ";") 'evil-ex))

;; Exits insert mode by pressing jj
(defun my-jj ()
  (interactive)
  (let* ((initial-key ?j)
         (final-key ?j)
         (timeout 0.4)
         (event (read-event nil nil timeout)))
    (if event
        ;; timeout met
        (if (and (characterp event) (= event final-key))
            (evil-normal-state)
          (insert initial-key)
          (push event unread-command-events))
      ;; timeout exceeded
      (insert initial-key))))

(define-key evil-insert-state-map (kbd "j") 'my-jj)


;; * File Extensions
;;
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.lhs$" . LaTeX-mode))

;; * Auto Complete
;;
(ac-config-default)

;; * Neotree
;;
(global-set-key [f9] 'neotree-toggle)

;; Buffer Cycling Magic
(require 'mybuffers)
(global-set-key (kbd "<C-tab>") 'mybuffers-switch)

;; * Indentation
;;
;; No electric-indent-mode anywhere!
;;   eletric-indent automatically indents
;;   after pressing enter.
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

(defun haskell-process-kill ()
  "Kill haskell process. Very usefull when it starts leaking"
  (interactive)
  (kill-process (haskell-process-process (haskell-commands-process))))

;; * haskell-mode commands
;; 
;; Some haskell-mode functionality keybindings.
;;
(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 
      'haskell-process-load-file)
  ; (define-key haskell-mode-map (kbd "C-c C-k") 
  ;    'haskell-process-kill)
  (define-key haskell-mode-map (kbd "C-c C-z") 
      'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 
      'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 
      'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 
      'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 
      'haskell-process-cabal)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 
      'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 
      'haskell-process-kill)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 
      'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 
      'haskell-process-cabal)))

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


;; ##########
;;
;; Path to customize file;
;; this file contains the custom-set-variables
;; and custom-set-faces.
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


;; * Visuals
;;
(load-theme 'obsidian t)


;; * My personal code
;;
(load "~/.emacs.d/victor/cookbook.el")
(load "~/.emacs.d/victor/agda-tag.el")
(load "~/.emacs.d/victor/emacs-func.el")


;; Set up a larger font at my home machine. I don't have a 24 inch
;; monitor at home yet... :(
(defun my-inc-fontsize ()
  (set-face-attribute 'default nil
                      :height
                      (+ (face-attribute 'default :height)
                         10)))

(when (string= system-name "logos")
  (progn (message "%s" "Setting larger font for logos")
         (my-inc-fontsize)))

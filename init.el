;; Emacs packages configuration
;;
;; Before anythingv we need package utils.
(require 'package)

;; And we initialize our elpa packages BEFORE
;; running the init file.
(package-initialize)
(setq package-enable-at-startup nil)

;; add load paths
(add-to-list 'load-path "~/.emacs.d/manual/evil-1.2.12")
(add-to-list 'load-path "~/.emacs.d/manual/goto-chg-1.6")
(add-to-list 'load-path "~/.emacs.d/manual/powerline-2.4")
(add-to-list 'load-path "~/.emacs.d/manual/linum-relative-0.5")
(add-to-list 'load-path "~/.emacs.d/manual/evil-snipe-2.0.6")
(add-to-list 'load-path "~/.emacs.d/manual/evil-surround-0.1")
(add-to-list 'load-path "~/.emacs.d/manual/mybuffers")
(add-to-list 'load-path "~/.emacs.d/manual/column-enforce-mode")
(add-to-list 'load-path "~/.emacs.d/manual/persistent-soft")

;; Packages required by us are:
(require 'org)
(require 'neotree)
(require 'auto-complete)
(require 'goto-chg)
(require 'powerline)
(require 'linum-relative)
(require 'evil)
(require 'evil-surround)
(require 'evil-snipe)
(require 'mybuffers)
(require 'column-enforce-mode)
(require 'persistent-soft)

;; Evil mode with powerline
(evil-mode 1)
(powerline-evil-theme)
(global-evil-surround-mode 1)
(evil-snipe-override-mode 1)

;; * Evil mode configuration
;;
;; Exits insert mode by pressing jk
;;
;; from https://stackoverflow.com/questions/10569165/how-to-map-jj-to-esc-in-emacs-evil-mode/10678483#10678483
(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?k)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?k))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))

(define-key evil-insert-state-map (kbd "j") 'cofi/maybe-exit)

;; ** evil-snipe
;; 
;; Make sniping easy by making [ and ] match all open-close-goodies.
(push '(?\[ "[[{(]") evil-snipe-aliases)
(push '(?\] "[]})]") evil-snipe-aliases)

;; ** Evil Map changes
;;
;; use '[' and ']' to jump between paragraphs.
(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd "[") 'evil-backward-paragraph)
  (define-key evil-motion-state-map (kbd "]") 'evil-forward-paragraph)
)

;; * Emacs Parens
(show-paren-mode 1)

;; * Emacs align
(global-set-key (kbd "C-a") 'align-regexp)

;; TODO: add some evil operator for aligning code on visual mode.

;; * Auto Complete
;;
(ac-config-default)

;; * Neotree
;;
(global-set-key [f9] 'neotree-toggle)

;; * Mybuffers
;;
(global-set-key (kbd "<C-tab>") 'mybuffers-switch)

;; * Indentation
;;
;; No electric-indent-mode anywhere!
;;   eletric-indent automatically indents
;;   after pressing enter.
(when (fboundp 'electric-indent-mode) (electric-indent-mode -1))

;; ##########
;;
;; Path to customize file;
;; this file contains the custom-set-variables
;; and custom-set-faces.
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


;; * Visuals
;;
(load-theme 'zenburn t)


;; * My personal code
;;
;; Loads some libraries under victor/ subfolder.
;;
(mapc (lambda (x) 
         (load (expand-file-name (concat ".emacs.d/local/" x))))
  (list
    "emacs-func.el"
    "latex.el"
    "haskell.el"
    "agda.el"
  ))

;; Set up a larger font at my home machine. I don't have a 24 inch
;; monitor at home yet... :(
(defun my-inc-fontsize ()
  (set-face-attribute 'default nil
                      :height
                      (+ (face-attribute 'default :height)
                         30)))

(when (string= system-name "logos")
  (progn (message "%s" "Setting larger font for logos")
         (my-inc-fontsize)))

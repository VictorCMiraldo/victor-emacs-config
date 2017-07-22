;; Responsible for setting up my agda mode.

;; find agda mode
(load-file (let ((coding-system-for-read 'utf-8))
	     (shell-command-to-string "agda-mode locate")))


;; Fix agda2-mode shortcuts
(eval-after-load 'agda2-mode '(progn
  (define-key agda2-mode-map (kbd "M-@")
    'agda2-goto-definition-keyboard)
  (define-key evil-normal-state-map [mouse-2]
    'agda2-goto-definition-mouse)))

;; load other relevant files for my agda mode.
(load (expand-file-name ".emacs.d/local/agda-tag.el"))

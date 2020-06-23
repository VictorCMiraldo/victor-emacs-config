;; Responsible for setting up my agda mode.

;; Some chars get inconsistent heights. unicode-fonts
;; fixes this problem.
(require 'unicode-fonts)
(unicode-fonts-setup)


;; find agda mode
(load-file (let ((coding-system-for-read 'utf-8))
                 (shell-command-to-string "agda-mode locate")))


;; Fix agda2-mode shortcuts
(eval-after-load 'agda2-mode '(progn
  (define-key agda2-mode-map (kbd "M-<right>")
    'agda2-goto-definition-keyboard)
  (define-key agda2-mode-map (kbd "M-<left>")
    'agda2-go-back)
  (define-key agda2-mode-map (kbd "M-<up>")
    'agda2-previous-goal)
  (define-key agda2-mode-map (kbd "M-<down>")
    'agda2-next-goal)
  (define-key evil-normal-state-map [mouse-2]
    'agda2-goto-definition-mouse)))

;; load other relevant files for my agda mode.
(load (expand-file-name "~/.emacs.d/local/agda-tag.el"))

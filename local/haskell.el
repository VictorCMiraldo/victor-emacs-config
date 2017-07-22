;; My haskell-mode niceties

;; We need haskell-mode!
(require 'haskell-mode)

;; makes sure emacs knows what are haskell files
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))

;; makes sure that evil starts interactive-haskell in normal mode
(add-to-list 'evil-insert-state-modes 'interactive-haskell-mode)

;; * haskell-mode commands

(defun haskell-process-kill ()
  "Kill haskell process. Very usefull when it starts leaking"
  (interactive)
  (kill-process (haskell-process-process (haskell-commands-process))))

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


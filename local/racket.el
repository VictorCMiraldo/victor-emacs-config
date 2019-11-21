;; My Racket Niceties

(require 'racket-mode)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'racket-mode))

(with-eval-after-load 'racket-mode
  (define-key racket-mode-map (kbd "C-c C-l")
      'racket-run))


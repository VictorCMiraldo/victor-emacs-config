
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; My pattern matching wonder

(defun my-p-match (point var pats)
  "Pattern matches a variable with a supplied list of patterns (sep by ;)."
  (interactive "d\nsVariable to Split: \nsList of patterns: ")
  (let (origline patsopen)
    (setq patsopen (mapcar 'chomp (split-string pats ";")))
    (goto-char point)
    (setq origline (thing-at-point 'line t))
    (move-beginning-of-line 1)
    (kill-line)
    (run-p-match origline point var (reverse patsopen))))
    
;; Run my pattern matching
(defun run-p-match (orig point var pats)
  (if (null pats) 
      ()
      (progn (run-p-match-1 orig point var (car pats))
             (run-p-match orig point var (cdr pats)))))
             
(defun run-p-match-1 (orig point var pat)
  (goto-char point)
  (move-beginning-of-line 1)
  (let (orig2 newvar newpat)
    (setq newvar (concat " " (concat var " ")))
    (setq newpat (concat " " (concat pat " ")))
    (setq orig2 (replace-regexp-in-string newvar newpat orig))
    (insert orig2)
;;    (newline)  
  )
)
  
;; Pattern match to C-M-c
(global-set-key (kbd "C-M-c") 'my-p-match)
  
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

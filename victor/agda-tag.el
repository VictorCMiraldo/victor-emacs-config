;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Begin of Agda tagging

; Begin tag and end tag creation
(defun mk-tag-begin (name aux)
  (format "%%<*%s-%s>\n\\begin{code}\n" name aux))
  
(defun mk-tag-end (name aux)
  (format "\\end{code}\n%%</%s-%s>\n" name aux))
  
(defun mk-tagless (str)
  (format "\\begin{code}\n%s\n\\end{code}"))
  
(defun mk-tag (name aux str)
  (concat (mk-tag-begin name aux) str (mk-tag-end name aux)))
  
(defun mk-agda-data (name)
  (format "  data %s : Set where\n" name))
  
(defun mk-agda-type (name)
  (format "  %s : ?\n" name))
 
(defun mk-agda-body (name)
  (format "  %s = ?\n" name))

; Erases the symbol at the cursor and return it's value.
(defun symbol-at-point-clear ()
  (let (bounds st ed thing)
       (setq thing  (thing-at-point 'word))
       (setq bounds (bounds-of-thing-at-point 'word))
       (setq st (car bounds))
       (setq ed (cdr bounds))
       (delete-region st ed)
       thing
  ))
  
; Tags a new data declaration
(defun i-data ()
  "Insert a data declaration, properly tagged."
  (interactive)
  (let (tag)
       (setq tag (symbol-at-point-clear))
       (insert (mk-tag tag "data" (mk-agda-data tag)))
  )
)

; Tags a new function declaration
(defun i-fun ()
  "Inserts a function declaration, properly tagged."
  (interactive)
  (let (tag)
       (setq tag (symbol-at-point-clear))
       (insert (mk-tag tag "type" (mk-agda-type tag)))
       (insert (mk-tag tag "def" (mk-agda-body tag)))
  )
)

; Returns the tag type
(defun get-tag-type (str)
  (let (dataM)
       (setq dataM (string-match "data [^:]*" str))
       (if (eq dataM nil) 'FUN 'DATA )
  ))

; Gets the position in which the tag name ends
(defun get-tag-name-end (str)
  (string-match " :.*$" str))

; Tags a region, adding "data" for data declarations
; and "dec" for function declarations/definitions.
(defun i-region (start end)
  "Inserts a tag on the selected region"
  (interactive "r")
  (let (str strTy fstr tname tag1)
       (setq str   (chomp (buffer-substring start end)))
       (setq strTy (get-tag-type str))
       (if (eq strTy 'DATA) 
           (progn (setq fstr (substring str 5))
                  (setq strTy "data"))
           (progn (setq fstr str)
                  (setq strTy "type")))
       (setq tname (substring fstr 0 (get-tag-name-end fstr)))
       (goto-char start)
       (setq tag1 (mk-tag-begin tname strTy))
       (insert tag1)
       (goto-char (+ 2 (+ end (string-width tag1))))
       (insert "\n" (mk-tag-end tname strTy))
  ))

(defun i-region-simple (point tag)
  "Given that the point is in a region surrounded by begin and
   end code, will tag it accordingly"
  (interactive "d\nsTag:  ")
  ; searches for \begin{code} backwards. If we find it,
  ; moves the point to the beginning of said line.
  (search-backward "\\begin{code}")
  (move-beginning-of-line 1)
  ; we then insert our tag.
  (insert (format "%%<*%s>\n" tag))

  ; And now we go to the next \end{code}
  (search-forward "\\end{code}")
  (insert (format "\n%%</%s>" tag))
  )

(defun i-code (start end)
  "Inserts a \\begin{code} \\end{code} tag in the region."
  (interactive "r")
  (goto-char start)
  (insert "\\begin{code}\n")
  (goto-char (+ 13 end))
  (insert "\n\\end{code}"))

(defun i-splitregion (point)
  "Inserts a \\end{code} \\begin{code} tag at point."
  (interactive "d")
  (move-beginning-of-line 1)
  (insert "\\end{code}\n\\begin{code}\n")
)
 

(require 'agda2-mode) 
  
; Keybinds for tagging data and functions.
; mnemonic: C-c "Tag" "Data" or "Tag" "Func"  
(define-key agda2-mode-map (kbd "C-c t d") 'i-data)
(define-key agda2-mode-map (kbd "C-c t f") 'i-fun)
(define-key agda2-mode-map (kbd "C-c t r") 'i-region-simple)
(define-key agda2-mode-map (kbd "C-c t c") 'i-code)
(define-key agda2-mode-map (kbd "C-c t b") 'i-splitregion)

;; End of Agda tagging
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Basic f* configuration

;; Enters f-star mode
(add-to-list 'auto-mode-alist '("\\.fsi\\'" . fstar-mode))

;; loads proof general
(load "/home/victor/.opam/system/share/proofgeneral/generic/proof-site.el")

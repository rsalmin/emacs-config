;; use spaces instead of tabs for c-modes
(defun custom-c-mode-hook ()
    ; always use spaces instead of tabs (use C-q TAB to insert tabs)
    (setq-default indent-tabs-mode nil)
    (setq c-default-style "bsd" c-basic-offset 4)
  )
(add-hook 'c-mode-common-hook 'custom-c-mode-hook)


;;
;;      Rust
;;
(require 'rust-mode)
(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t))

;; "Icky hack" (https://www.masteringemacs.org/article/how-to-get-started-tree-sitter) to start with
(setq major-mode-remap-alist
      '((bash-mode . bash-ts-mode)
	(css-mode . css-ts-mode)
	(js2-mode . js-ts-mode)
	(json-mode . json-ts-mode)
	(python-mode . python-ts-mode)
;;	(rust-mode . rust-ts-mode)
	(typescript-mode . typescript-ts-mode)
	(yaml-mode . yaml-ts-mode)))


;;
;;      Common Lisp
;;
(setq inferior-lisp-program "sbcl")

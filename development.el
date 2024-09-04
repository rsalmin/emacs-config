(c-add-style "my-style"
             '("linux"
               ;; always use spaces instead of tabs (use C-q TAB to insert tabs)
               (indent-tabs-mode . nil)
               ;; indent by 4 spaces
               (c-basic-offset . 4)
               ;; no indents after namespaces
               (c-offsets-alist . ((innamespace . [0])))))


;; uset my-style for all c-modes
(defun my-c-mode-hook ()
  (c-set-style "my-style"))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)


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
(load (expand-file-name "~/.quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")

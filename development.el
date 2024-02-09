;; use spaces instead of tabs for c-modes
(defun custom-c-mode-hook ()
    ; always use spaces instead of tabs (use C-q TAB to insert tabs)
    (setq-default indent-tabs-mode nil)
    (setq c-default-style "bsd" c-basic-offset 4)
  )
(add-hook 'c-mode-common-hook 'custom-c-mode-hook)


(require 'rust-mode)

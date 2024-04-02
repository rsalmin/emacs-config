;disable toolbar
(tool-bar-mode -1)

;disable scrollbar
(scroll-bar-mode -1)

;disable menubar
(menu-bar-mode -1)

; don't show startup screen
(setq inhibit-startup-screen t)

; mouse paste at text cursor not mouse cursor
(setq mouse-yank-at-point t)

; backup files in separate directory
(setq backup-directory-alist `((".*" . "~/.emacs-backup")))
; autosave files in separate directory
(setq auto-save-file-name-transforms `((".*" "~/.emacs-saves" t)))

;use nice acme like theme
(use-package acme-theme
  :config
  (load-theme 'acme t))

;; default to mononoki
(set-face-attribute 'default nil
                    :family "mononoki"
                    :height 180
                    :weight 'normal
                    :width  'normal)

;; sudo-edit
(global-set-key (kbd "C-c C-r") 'sudo-edit)

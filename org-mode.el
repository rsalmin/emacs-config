;;;
;;;  This Is ORG mode part
;;;

;; keybindings for org mode
(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; add org-habbit module to org-modules
(with-eval-after-load 'org
  (add-to-list 'org-modules 'org-habit t))

;; set org-directory for next use
(setq org-directory "~/org/")

;; define variable for icon directory
(defvar-local my-icon-dir (concat org-directory "icons/")
    "directory with the icons")

;; Добавить иконок
(setq org-agenda-category-icon-alist
      `(
	("personal" ,(concat my-icon-dir "elk-svgrepo-com.svg") nil nil :ascent center :height (1.0 . em) )
	("home" ,(concat my-icon-dir "great-wall-svgrepo-com.svg") nil nil :ascent center :height (1.0 . em) )
	("kids" ,(concat my-icon-dir "personal-information-direct-relationship-svgrepo-com.svg") nil nil :ascent center :height (1.0 . em) )
	("work" ,(concat my-icon-dir "office-chair-svgrepo-com.svg") nil nil :ascent center :height (1.0 . em) )
	("regular" ,(concat my-icon-dir "reload-svgrepo-com.svg") nil nil :ascent center :height (1.0 . em) )
	))

;; set automatically push in org mode for git-auto-commit
(defun org-mode-gac-settings ()
  (setq gac-automatically-push-p t))
(add-hook 'org-mode-hook 'org-mode-gac-settings)

;; all files in this directory for agenda
(setq org-agenda-files (list (concat org-directory "actual/")))

;; seperate directory for archive
(setq org-archive-location (concat org-directory "archive/archive.org::* From %s"))

;; Save clock history across emacs session (two lines from manual)
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; Set idle time to 10 minutes
(setq org-clock-idle-time 10)

;; capture templates
(setq org-capture-templates
      `(("t" "Todo" entry (file+headline ,(concat org-directory "incoming.org") "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree ,(concat org-directory "journal.org"))
         "* %?\nEntered on %U\n  %i\n  %a")
        ("n" "Notes" entry (file ,(concat org-directory "notes.org"))
         "* %?\nEntered on %U\n  %i\n  %a")
	))

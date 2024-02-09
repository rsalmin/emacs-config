;; map keys from en layout to ru layout
;; taken from https://www.reddit.com/r/emacs/comments/7wskbw/emacs_and_international_keyboard_layouts/
(cl-loop
 for from across "йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖ\ЭЯЧСМИТЬБЮ№"
 for to   across "qwertyuiop[]asdfghjkl;'zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>#"
   do
   (eval `(define-key local-function-key-map
	    (kbd ,(concat "C-"
			  (string from)))
	    (kbd ,(concat "C-"
			  (string to)))))
   (eval `(define-key local-function-key-map
	    (kbd ,(concat "M-"
			  (string from)))
	    (kbd ,(concat "M-"
			  (string to)))))
   (eval `(define-key local-function-key-map
	    (kbd ,(string from))
	    (kbd ,(string to)))))

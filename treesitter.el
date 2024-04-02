;; This is a helper script to build treesiter parsers (for most of languages but not all)

;; Set language list with repositories
(setq treesit-language-source-alist
      '((agda "https://github.com/tree-sitter/tree-sitter-agda")
	(bash "https://github.com/tree-sitter/tree-sitter-bash")
	(cmake "https://github.com/uyha/tree-sitter-cmake")
	(c "https://github.com/tree-sitter/tree-sitter-c")
	(css "https://github.com/tree-sitter/tree-sitter-css")
	(cpp "https://github.com/tree-sitter/tree-sitter-cpp")
	(elisp "https://github.com/Wilfred/tree-sitter-elisp")
	(go "https://github.com/tree-sitter/tree-sitter-go")
	(html "https://github.com/tree-sitter/tree-sitter-html")
	(haskell "https://github.com/tree-sitter/tree-sitter-haskell")
	(java "https://github.com/tree-sitter/tree-sitter-java")
	(javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
	(json "https://github.com/tree-sitter/tree-sitter-json")
	(julia "https://github.com/tree-sitter/tree-sitter-julia")
	(make "https://github.com/alemuller/tree-sitter-make")
	(markdown "https://github.com/ikatyang/tree-sitter-markdown")
	(ocaml "https://github.com/tree-sitter/tree-sitter-ocaml")
	(python "https://github.com/tree-sitter/tree-sitter-python")
	(rust "https://github.com/tree-sitter/tree-sitter-rust")
	(scala "https://github.com/tree-sitter/tree-sitter-scala")
	(toml "https://github.com/tree-sitter/tree-sitter-toml")
	(tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
	(typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
	(yaml "https://github.com/ikatyang/tree-sitter-yaml")))

;; call to compile all languages
(mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))
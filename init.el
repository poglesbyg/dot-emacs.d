(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '( clojure-mode clojure-test-mode clojurescript-mode
                  slime slime-repl 
                  nrepl ac-nrepl nrepl-ritz
                  slime slime-repl ac-slime
                  ;; JavaScript stuff
                  js2-mode json-mode slime-js
                  css-mode
                  flycheck
                  ;; Rust stuff
                  rust-mode
                  ;; Eye-candy
                  highlight-parentheses highline col-highlight crosshairs vline
                  highlight-symbol hl-sexp idle-highlight
                  rainbow-delimiters
                  maxframe
                  fill-column-indicator
                  ;; regex match
                  all alpha
                  ;; Paren matching
                  mic-paren
                  ;; Ruby stuff
                  ruby-end
                  ;; Color themes
                  zenburn-theme solarized-theme
                  ;; Undo tree
                  undo-tree
                  ;; prolog
                  ediprolog)
  "A list of packages to ensure are installed at launch")

(load "~/.emacs.d/user.el")

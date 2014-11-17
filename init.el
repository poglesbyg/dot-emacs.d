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

(setq inferior-lisp-program "/usr/local/bin/sbcl --noinform")

(require 'erc)
(require 'ediprolog)
(global-set-key [f10] 'prolog-compile-file)
(setq auto-mode-alist
      (cons (cons "\\.pl" 'prolog-mode)
            auto-mode-alist))
(setq auto-mode-alist
      (cons (cons "\\.go" 'go-mode)
            auto-mode-alist))
(setq auto-mode-alist
      (cons (cons "\\.hy" 'hy-mode)
            auto-mode-alist))
(setq auto-mode-alist
      (cons (cons "\\.rust" 'rust-mode)
            auto-mode-alist))

(global-set-key [f1] 'shell)

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(load "~/.emacs.d/user.el")

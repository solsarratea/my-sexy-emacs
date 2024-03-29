(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(if (version< emacs-version "24.4")
  (require 'setup-ivy-counsel)
  (require 'setup-helm)
  (require 'setup-helm-gtags))
;;(require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-editing)

(require 'sr-speedbar)
(global-set-key (kbd "C-x C-b") 'sr-speedbar-toggle)

(require 'nyan-mode)
(nyan-mode)


;; function-args
;; (require 'function-args)
;; (fa-config-default)
;  (define-key c-mode-map  [(tab)] 'company-complete)
;; (define-key c++-mode-map  [(tab)] 'company-complete)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
    ("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(gdb-enable-debug t)
 '(gdb-many-windows t)
 '(gdb-show-main t)
 '(package-selected-packages
   (quote
    (markdown-preview-mode markdown-mode+ markdown-mode glsl-mode org-bullets info-beamer ess babel-repl org-babel-eval-in-repl htmlize nasm-mode nyan-mode yasnippet-snippets sr-speedbar color-theme-sanityinc-tomorrow zygospore helm-gtags helm yasnippet ws-butler volatile-highlights use-package undo-tree iedit dtrt-indent counsel-projectile company clean-aindent-mode anzu))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (require 'redo nil 'noerror)
  (global-set-key (kbd "C-S-z") 'redo))

(global-set-key (kbd "C-z") 'undo)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . nil)
   (R . t)
   (C . t)
   (ruby . t)))

;; Disable scrollbars
(customize-set-variable 'scroll-bar-mode nil)
(customize-set-variable 'horizontal-scroll-bar-mode nil)


;;Enable linum mode
(global-linum-mode 1)

(setq org-log-done 'time)

(require 'neotree)
(global-set-key [f12] 'neotree-toggle)


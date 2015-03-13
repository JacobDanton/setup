;;; Disable toolbar
(tool-bar-mode -1)
(setq inhibit-startup-message t)

;;; Default Coding Systems
(prefer-coding-system 'utf-8)

;;; Initialize MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(unless package-archive-contents (package-refresh-contents))
  (package-initialize)

;;; Install fsharp-mode
(unless (package-installed-p 'fsharp-mode)
  (package-install 'fsharp-mode))

(require 'fsharp-mode)

;;; Install markdown-mode
(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

(require 'markdown-mode)

;;; Set font
(set-face-attribute 'default nil :font "Consolas-11" )

;;; Install color-theme-sanityinc-tomorrow
(unless (package-installed-p 'color-theme-sanityinc-tomorrow)
  (package-install 'color-theme-sanityinc-tomorrow))

(require 'color-theme-sanityinc-tomorrow)

;;; Added by Custom
(custom-set-variables
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))))
(custom-set-faces )

;;; Set custom theme
;;; Note: this has to happen after the custom-set section or it will prompt each time
(color-theme-sanityinc-tomorrow-night)


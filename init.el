(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
(setq make-backup-files nil)
(setq select-enable-clipboard t)
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(use-package naysayer-theme
  :ensure t
  :config
  (load-theme 'naysayer t))
(set-face-attribute 'default nil
		    :font "Consolas"
		    :height 110) ; 11pt font
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(use-package rust-mode :ensure t)
(fido-vertical-mode 1)
(use-package magit :ensure t)

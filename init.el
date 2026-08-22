(setq make-backup-files nil) ; stop creating ~ files
(setq select-enable-clipboard t)
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(load-theme 'wombat)
(set-face-attribute 'default nil
		    :font "Iosevka"
		    :height 130) ; 12pt font
(add-hook 'window-setup-hook 'toggle-frame-maximized t)
(use-package rust-mode :ensure t)
(fido-vertical-mode 1)
(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))

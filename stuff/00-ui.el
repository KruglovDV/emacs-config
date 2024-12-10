(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-startup-screen t)
(setq scroll-step 1)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lock-files nil)
(global-display-line-numbers-mode)

;; (set-face-attribute 'line-number nil :foreground "gray" :background nil :height 0.8)

(global-display-line-numbers-mode 1)

(setq ring-bell-function 'ignore)

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

;; (use-package tao-theme
;;   :ensure t
;;   :init
;;   (setq tao-theme-use-sepia nil)
;;   (setq tao-theme-use-boxes nil)
;;   :config
;;   (load-theme 'tao-yang t)
;;   (set-face-attribute 'default nil :family "Iosevka" :height 180))

(use-package kaolin-themes
  :ensure t
  :config
  (load-theme 'kaolin-light t)
  (set-face-attribute 'default nil :family "Iosevka" :height 180)
  (set-face-foreground 'font-lock-type-face "#2d2b50"))

(provide '00-ui)

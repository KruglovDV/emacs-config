(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

 (let* ((stuff-dir (concat (file-name-directory load-file-name) "/stuff"))
       (load-it (lambda (f) (load-file (concat (file-name-as-directory stuff-dir) f)))))
  (mapc load-it (directory-files stuff-dir nil "\\.el$")))

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d23adb4d0d0acf5cf4dcdad91e4e70b6c15481bcff4170f28ed2dae90b253d00" default))
 '(package-selected-packages
   '(prettier-js vterm treemacs-persp treemacs-tab-bar treemacs-magit treemacs-projectile treemacs-evil treemacs evil-collection evil-commentary evil kaolin-themes soothe-theme doom-themes exec-path-from-shell flycheck-eslint flycheck-golangci-lint tsx-mode lsp-mode company flycheck projectile cider general smartparens which-key counsel ivy tao-theme magit all-the-icons)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

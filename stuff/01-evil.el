(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-set-undo-system 'undo-redo)
  (evil-mode 1))

(use-package evil-commentary
  :after evil
  :ensure t
  :hook ((clojure-mode emacs-lisp-mode lsp-mode) . evil-commentary-mode))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(provide '01-evil)

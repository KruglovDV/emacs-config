(use-package evil
  :ensure t
  :config
  (evil-set-undo-system 'undo-redo)
  (evil-mode 1))

(use-package evil-commentary
  :ensure t
  :hook ((lsp-mode) . evil-commentary-mode))

(provide '01-evil)

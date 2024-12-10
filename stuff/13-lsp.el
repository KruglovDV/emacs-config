(use-package lsp-mode
  :ensure t
  :hook
  ((clojure-mode tsx-ts-mode typescript-ts-mode go-ts-mode) . lsp-deferred)
  :config
  (setq lsp-completion-provider :capf)
  :custom
  (lsp-enable-snippet t))

(use-package go-ts-mode
  :ensure t
  :init
  (setq lsp-gopls-server-path "/Users/dimakruglov/go/bin/gopls")
  (setq lsp-golangci-lint-path "/Users/dimakruglov/go/bin/golangci-lint-langserver")
  (setq lsp-golangci-lint-server-path "/Users/dimakruglov/go/bin/golangci-lint-langserver")
  :hook
  ((go-ts-mode) . (lambda () (add-hook 'before-save-hook #'lsp-format-buffer nil t)))
)

(defun my-go-ts-mode-setup ()
  "Custom configurations for go-ts-mode."
  (setq tab-width 4)
  (setq indent-tabs-mode t)
  (setq go-ts-mode-indent-offset 4)
  ;; (add-hook 'before-save-hook 'gofmt-before-save)
  )

(add-hook 'go-ts-mode-hook #'my-go-ts-mode-setup)

(provide '13-lsp)

(use-package flycheck
  :ensure t
  :hook ((emacs-lisp-mode clojure-mode lsp-mode) . flycheck-mode))

(use-package flycheck-golangci-lint
  :ensure t
  :hook (go-ts-mode . flycheck-golangci-lint-setup))

(defun my/use-eslint-from-node-modules ()
  "Use eslint from node_modules if available."
  (let ((local-eslint (expand-file-name "node_modules/.bin/eslint"
                                        (locate-dominating-file
                                         (or (buffer-file-name) default-directory)
                                         "node_modules"))))
    (when (and local-eslint (file-executable-p local-eslint))
      (setq-local flycheck-javascript-eslint-executable local-eslint))))


(defun my/use-eslint-from-node-modules ()
  "Use eslint from node_modules if available, and configure LSP and eslint checkers for Flycheck."
  (let ((local-eslint (expand-file-name "node_modules/.bin/eslint"
                                        (locate-dominating-file
                                         (or (buffer-file-name) default-directory)
                                         "node_modules"))))
    ;; Настройка ESLint, если доступен локальный
    (when (and local-eslint (file-executable-p local-eslint))
      (setq-local flycheck-javascript-eslint-executable local-eslint)
      (message "Using local eslint at: %s" local-eslint))
    
    ;; Настройка Flycheck чекеров для LSP и eslint
    (when (derived-mode-p 'tsx-ts-mode 'typescript-ts-mode 'js-ts-mode)
      ;; Устанавливаем LSP как основной чекер
      (setq-local flycheck-checker 'lsp)
      ;; Добавляем eslint как следующий чекер, если доступен
      (when local-eslint
        (flycheck-add-next-checker 'lsp 'javascript-eslint)))))

(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

(provide '10-flycheck)

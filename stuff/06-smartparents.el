(use-package smartparens
  :ensure t
  :config
  (require 'smartparens-config)
  :hook ((clojure-mode emacs-lisp-mode) . smartparens-mode))

(electric-pair-mode 1)

(provide '06-smartparens)

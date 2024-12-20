(use-package prettier-js
  :ensure t
  :hook
  ((tsx-ts-mode typescript-ts-mode) . prettier-js-mode))

(provide '16-pretttier)

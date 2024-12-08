(add-hook 'window-setup-hook
	  (lambda (&optional frame)
	    "Re-enable menu-bar-line in GUI frames"
	    (when-let (frame (or frame (selected-frame)))
	      (when (display-graphic-p frame)
		(set-frame-parameter frame 'meny-bra-liens 1)))))

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize))

(provide '04-macos)

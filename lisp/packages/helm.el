(use-package helm)
(use-package helm-lsp)
(use-package helm-projectile)
(use-package helm-rg
  :config
  (setq helm-rg-ripgrep-executable "/usr/local/bin/rg"
		helm-rg-default-directory 'git-root
		)
  )

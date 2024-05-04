;; Depends on 'general' package being loaded!
  (general-evil-setup)
  ;; Set up 'SPC' as the leader key
  (general-create-definer start/leader-keys
    :states '(normal insert visual motion emacs)
    :keymaps 'override
    :prefix "SPC"           ;; Set leader key
    :global-prefix "C-SPC") ;; Set global leader key

  (start/leader-keys
    "SPC" '(helm-find-files :wk "Find file")
    "/" '(helm-rg :wk "Grep file")
    "TAB" '(av/switch-to-previous-buffer :wk "Previous buffer")
   ) 

  (start/leader-keys
    "f" '(:ignore t :wk "Find")
    "f c" '((lambda () (interactive) (find-file "~/.config/emacs/init.el")) :wk "Edit emacs config")
    "f r" '(helm-recentf :wk "Recent files")
    "f f" '(helm-find-files :wk "Search for files")
    "f g" '(helm-rg :wk "Ripgrep search in files")
    "f l" '(helm-find :wk "Find line")
    "f i" '(consult-imenu :wk "Imenu buffer locations"))

  (start/leader-keys
    "," '(helm-buffers-list :wk "Switch buffer")
    "b" '(:ignore t :wk "Buffer Bookmarks")
    "b b" '(helm-buffers-list :wk "Switch buffer")
    "b d" '(kill-this-buffer :wk "Delete this buffer")
    "b i" '(ibuffer :wk "Ibuffer")
    "b n" '(next-buffer :wk "Next buffer")
    "b p" '(previous-buffer :wk "Previous buffer")
    "b r" '(revert-buffer :wk "Reload buffer")
    )

  (start/leader-keys
    "d" '(:ignore t :wk "Dired")
    "d v" '(dired :wk "Open dired")
    "d j" '(dired-jump :wk "Dired jump to current"))

  (start/leader-keys
    "e" '(:ignore t :wk "Eglot Evaluate")
    "e e" '(eglot-reconnect :wk "Eglot Reconnect")
    "e f" '(eglot-format :wk "Eglot Format")
    "e l" '(consult-flymake :wk "Consult Flymake")
    "e b" '(eval-buffer :wk "Evaluate elisp in buffer")
    "e r" '(eval-region :wk "Evaluate elisp in region"))

  (start/leader-keys
    "g" '(:ignore t :wk "Git")
    "g g" '(magit-status :wk "Magit status"))

  (start/leader-keys
    "h" '(:ignore t :wk "Help") ;; To get more help use C-h commands (describe variable, function, etc.)
    "h q" '(save-buffers-kill-emacs :wk "Quit Emacs and Daemon")
    "h r" '((lambda () (interactive)
              (load-file "~/.config/emacs/init.el"))
            :wk "Reload Emacs config"))

  (start/leader-keys
    "p" '(:ignore t :wk "Projectile command map")
    "p P" '(helm-projectile-switch-project :wk "Switch project")
    "p f" '(helm-projectile-find-file :wk "Find file")
    "p g" '(helm-projectile-rg :wk "Grep files")
    "p F" '(helm-projectile-find-file-in-known-projects :wk "Find file - all projects")
)
  (start/leader-keys
    "s" '(:ignore t :wk "Show")
    "s e" '(eat :wk "Eat terminal"))

  (start/leader-keys
    "t" '(:ignore t :wk "Toggle")
    "t t" '(visual-line-mode :wk "Toggle truncated lines (wrap)")
    "t l" '(display-line-numbers-mode :wk "Toggle line numbers"))

  (start/leader-keys
    "w" '(:ignore t :wk "Window")
    "w d" '(delete-window :wk "Delete")
    "w m" '(delete-other-windows :wk "Maximize")
    "w w" '(other-window :wk "Other window")
	)
(provide 'keybinds)

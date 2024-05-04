(load-theme 'gruvbox-dark-medium t) ;; We need to add t to trust this package
(add-to-list 'default-frame-alist '(alpha-background . 90)) ;; For all new frames henceforth

(set-face-attribute 'default nil
                    :font "JetBrainsMono NF" ;; Set your favorite type of font or download JetBrains Mono
                    :height 180
                    :weight 'medium)
;; This sets the default font on all graphical frames created after restarting Emacs.
;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
;; are not right unless I also add this method of setting the default font.

(setq-default line-spacing 0.12)

;; Maximize window
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
(provide 'ui)

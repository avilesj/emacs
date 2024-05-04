(defun av/switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun av/load-directory (dir)
      (let ((load-it (lambda (f)
		       (load-file (concat (file-name-as-directory dir) f)))
		     ))
	(mapc load-it (directory-files dir nil "\\.el$"))))

(defun av/full-path (@file-relative-path)
  "Get full path of file relative to caller file location."
  (concat (file-name-directory
           (or load-file-name buffer-file-name))
          @file-relative-path))

(provide 'util)

(defun ruby-update-hash ()
  (interactive)

  (save-excursion
    (goto-char (poing-min))
    "Update Ruby hash syntax to 1.9.3"
    (while (search-forward-regexp "\\(:\\)\\(\\w*\\)\\s-*=>" nil t)
      (replace-match "\\2\\1" t nil))
    (message "Updated your hash syntax :)")
  )
)
;;; ruby-hash-syntax.el ends here

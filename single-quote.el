(defun single-quote-toggle (start end)
  (interactive "r")

  (save-excursion
    (narrow-to-region start end)
    (goto-char (point-min))
    (while (search-forward-regexp "\"" nil t)
      (replace-match "'" t nil))
    (message "Replaced double quotes :)")
    (widen)
  )
)
;;; single-quote.el ends here


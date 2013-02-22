;;; acute.el --- Convert Spanish language accented characters to HTML

;; Copyright (C) 2013 Fernando Briano <fernando@picandocodigo.net>

;; Version: 1.0

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 2 of
;; the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be
;; useful, but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public
;; License along with this program; if not, write to the Free
;; Software Foundation, Inc., 59 Temple Place, Suite 330, Boston,
;; MA 02111-1307 USA

;;; Commentary:

;; This script converts acute vocals (á, é, í, ó, ú) and enye (ñ) into
;; their HTML equivalents(&aacute; etc.) for html documents.
;;
;; To install: put this file on the load-path and place the following
;; in your .emacs file:
;;
;;    (load "acute-to-html.el")
;;
;; To use: `M-x acute-to-html`
;;
;; I just wrote it to force me to learn some Elisp.
;;
;; TODO
;;  - More replacements (completely clean HTML maybe)
;;

(defun acute-to-html ()
  (interactive)
  "Convert acute to HTML"

  (goto-char (point-min))
  (replace-string "á" "&aacute;")

  (goto-char (point-min))
  (replace-string "é" "&eacute;")

  (goto-char (point-min))
  (replace-string "í" "&iacute;")

  (goto-char (point-min))
  (replace-string "ó" "&oacute;")


  (goto-char (point-min))
  (replace-string "ú" "&uacute;")


  (goto-char (point-min))
  (replace-string "ñ" "&ntilde;")
)
;;; acute-to-html.el ends here

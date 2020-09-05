;;; comment-dwim-2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "comment-dwim-2" "comment-dwim-2.el" (24402
;;;;;;  65048 729474 600000))
;;; Generated autoloads from comment-dwim-2.el

(autoload 'comment-dwim-2 "comment-dwim-2" "\
Call a comment command according to the context.

If the region is active, toggle commenting according to the value
of `cd2/region-command'.
Else, the function applies to the current line and calls a
different function at each successive call.  The algorithm is:
* First  call : Toggle line commenting
* Second call : - Kill end-of-line comment if present (1)
                - Insert end-of-line comment otherwise
Given an argument ARG, it reindents the inline comment instead (2).

You can also switch behaviors of (1) and (2) by setting
`comment-dwim-2--inline-comment-behavior' to 'reindent-comment.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; comment-dwim-2-autoloads.el ends here

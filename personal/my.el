;;;code
;;; (disable-theme 'zenburn)



;; rainbow delims
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(global-set-key "\C-cs" 'cider-selector)

;; (define-key cider-mode-map (kbd "C-c C-i") 'cider-inspect)

;; (define-key cider-repl-mode-map (kbd "C-c C-i") 'cider-inspect)

(setq cider-repl-history-file "~/.emacs.d/nrepl-history")

;(global-set-key "\C-cm" 'magit-status)

(add-hook 'after-init-hook 'global-company-mode)

(setq  nrepl-hide-special-buffers nil)

;; Octave stuff
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
            (cons '("\\.m$" . octave-mode) auto-mode-alist))


(setq prelude-guru nil)
(setq tab-width 2)
;; Newline + indent
(global-set-key (kbd "RET") 'newline-and-indent)

;; YAFL stuff

(setq auto-mode-alist
      (cons '("\\.yfl$" . clojure-mode) auto-mode-alist))


;; adding the ability to copy from the emacs selection
(defun pbcopy ()
  (interactive)
  (call-process-region (point) (mark) "pbcopy")
  (setq deactivate-mark t))

(defun pbpaste ()
  (interactive)
  (call-process-region (point) (if mark-active (mark) (point)) "pbpaste" t t))

(defun pbcut ()
  (interactive)
  (pbcopy)
  (delete-region (region-beginning) (region-end)))

(global-set-key (kbd "C-c c") 'pbcopy)
(global-set-key (kbd "C-c v") 'pbpaste)
(global-set-key (kbd "C-c x") 'pbcut)


;;; footer
(provide 'my)

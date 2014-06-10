;;;code
;;; (disable-theme 'zenburn)
(setq prelude-guru nil)
(setq tab-width 2)

;; rainbow delims
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; Octave stuff
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
            (cons '("\\.m$" . octave-mode) auto-mode-alist))


;; Newline + indent
(global-set-key (kbd "RET") 'newline-and-indent)



;;; footer
(provide 'my)

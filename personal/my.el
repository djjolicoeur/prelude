;;;code
;;; (disable-theme 'zenburn)
(setq prelude-guru nil)
(setq tab-width 2)

(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
            (cons '("\\.m$" . octave-mode) auto-mode-alist))


(global-set-key (kbd "RET") 'newline-and-indent)



;;; footer
(provide 'my)

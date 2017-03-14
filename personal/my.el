;;;code
;;; (disable-theme 'zenburn)



;; rainbow delims
(require 'rainbow-delimiters)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

(global-set-key "\C-cs" 'cider-selector)

;; (define-key cider-mode-map (kbd "C-c C-i") 'cider-inspect)

;; (define-key cider-repl-mode-map (kbd "C-c C-i") 'cider-inspect)

(setq cider-repl-history-file "~/.emacs.d/nrepl-history")

(setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")

                                        ;(global-set-key "\C-cm" 'magit-status)
;;sayid debugger
(eval-after-load 'clojure-mode
     '(sayid-setup-package "\C-d"))

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

;; HASKELL



;;; footer
(provide 'my)

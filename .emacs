(setq emacs-lisp-dir "~/.emacs.d/"
      my-elmode-dir (concat emacs-lisp-dir "elmodes/"))
(setq load-path
      (append load-path (list my-elmode-dir)))

(add-to-list 'load-path "~/.emacs.d/use-package/")
(eval-when-compile
    (require 'use-package))

(add-to-list 'load-path "~/.emacs.d/epitech/")

(column-number-mode 1)

(load "std.el")
(load "std_comment.el")
(if (file-exists-p "~/.myemacs") 
    (load-file "~/.myemacs"))
(put 'downcase-region 'disabled nil)

;;fly check
(require 'package)
(add-to-list 'package-archives
	     '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(use-package flycheck
	:ensure t
	:init (global-flycheck-mode))

;;auto-complete
(add-hook 'elixir-mode-hook 'ac-alchemist-setup)
(global-auto-complete-mode t)
(set-face-background 'ac-candidate-face "lightgray")
(set-face-background 'ac-selection-face "steelblue")
(setq ac-auto-show-menu t)

;;line number
(global-linum-mode t)
(setq linum-format "%3d \u2502 ")

;(require 'auto-complete)
;(global-auto-complete-mode t)

;(require 'auto-complete-config)
;(ac-ropemacs-initialize)
;
;(define-key ac-complete-mode-map "\t" 'ac-expand)
;(define-key ac-complete-mode-map "\r" 'ac-complete)
;(define-key ac-complete-mode-map "\M-n" 'ac-next)
;(define-key ac-complete-mode-map "\M-p" 'ac-previous)
;(setq ac-auto-start 3)
;(setq ac-dwim t)
;(set-default 'ac-sources '(ac-source-abbrev ac-source-words-in-buffer))
;(setq ac-modes
;      (append ac-modes
;	      '(eshell-mode
;		                         ))

(provide '.emacs)
;;; .emacs ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'html-mode-hook
	  (lambda ()
	      (setq indent-line-function 'indent-relative)))

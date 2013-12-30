;; Hacky way to specify color theme, and always open two frames
(require 'color-theme)
(color-theme-initialize)
(color-theme-ld-dark)

(setq default-frame-alist 
      '((width . 80) 
        (height . 40) 
        (background-color . "gray10")))

;;hacky way to always open two frames
(make-frame)
(other-frame 1)
(set-frame-size (selected-frame) 80 40)
(set-frame-position (selected-frame) 680 0)
(other-frame 1)
(set-frame-size (selected-frame) 80 40)
(set-frame-position (selected-frame) 0 0)

;; load go-mode
(add-to-list 'load-path "/usr/local/go/misc/emacs" t)
(require 'go-mode-load)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-close-quote "\"")
 '(TeX-open-quote "\"")
 '(case-fold-search t)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(font-lock-maximum-decoration t)
 '(font-lock-mode t t (font-lock))
 '(global-font-lock-mode t nil (font-lock))
 '(global-set-key (quote f3) t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(modeline-3d-p nil)
 '(paren-mode (quote paren) nil (paren))
 '(show-paren-mode t nil (paren))
 '(standard-indent 4)
 '(tab-always-indent t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tuareg-in-indent 0)
 '(tuareg-with-indent 0))

(setq ido-enable-flex-matching t)

(setq minibuffer-max-depth nil)

;;some custom keybindings
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-c") 'goto-char)
(global-set-key (kbd "<C-tab>") 'next-buffer)
(global-set-key (kbd "<C-S-iso-lefttab>") 'previous-buffer)

;; function to do a chrome lookup for the current ocaml symbol under the cursor
(defun ocaml-lookup-module ()
  (interactive) ;; to run from keybinding
  (let ((sym (thing-at-point 'symbol)))
    (if sym
        (shell-command
         (concat "chromium-browser http://caml.inria.fr/pub/docs/manual-ocaml/libref/"
                 (concat sym ".html")))
      )))

(add-hook 'tuareg-mode-hook
          (lambda ()
            (define-key tuareg-mode-map (kbd "M-?") 'ocaml-lookup-module)))

(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; make "alt-up" etc change focus for window partitions
(windmove-default-keybindings 'meta)


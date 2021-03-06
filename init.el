;; packages to install

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(defvar my/packages
  '(init-loader
    helm
    magit
    exec-path-from-shell
    company
    flycheck
    yaml-mode

    ;; helm
    helm-ls-git

    ;; python
    jedi-core
    company-jedi

    ;; go
    go-mode
    company-go

    ;; markdown
    markdown-mode
    )
  "")

;; add melpa repo
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init t)
(guru-global-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (point-undo web-mode-edit-element web-mode python-mode jedi shell-pop pug-mode guru-mode drill-instructor-AZIK-force restart-emacs helm-ls-git yaml-mode markdown-mode company-go go-mode go flycheck company-jedi company exec-path-from-shell magit init-loader helm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

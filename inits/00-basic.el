;; basic settings
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq delete-auto-save-files t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(column-number-mode 1)
(global-linum-mode t)
(setq default-tab-width 4)
(setq-default tab-width 4 indent-tabs-mode nil)
(scroll-bar-mode 0)
                 
(electric-pair-mode t)

(defun next-line (arg)
  (interactive "p")
  (condition-case nil
      (line-move arg)
    (end-of-buffer)))
(setq ring-bell-function 'ignore)

(global-hl-line-mode t)
(show-paren-mode 1)

;; eshell + shell-pop
(setq shell-pop-shell-type '("eshell" "*eshell*" (lambda () (eshell))))
(global-set-key (kbd "C-c o") 'shell-pop)

;; golden ratio
(golden-ratio-mode 1)
(add-to-list 'golden-ratio-exclude-buffer-names " *NeoTree*")

;; active window move
(global-set-key (kbd "<C-left>")  'windmove-left)
(global-set-key (kbd "<C-down>")  'windmove-down)
(global-set-key (kbd "<C-up>")    'windmove-up)
(global-set-key (kbd "<C-right>") 'windmove-right)

;; font-size
(set-face-attribute 'default nil :height 120)

;; theme
(load-theme 'misterioso t)

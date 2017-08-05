;; company-go
(require 'company)
(require 'company-go)
;; 諸々の有効化、設定
(add-hook 'go-mode-hook (lambda()
           (add-hook 'before-save-hook 'gofmt-before-save)
           (local-set-key (kbd "M-.") 'godef-jump)
           (set (make-local-variable 'company-backends) '(company-go))
           (company-mode)
           (setq indent-tabs-mode nil)    ; タブを利用
           (setq c-basic-offset 4)        ; tabサイズを4にする
           (setq tab-width 4)))

;; copy $GOPATH to emacs
(exec-path-from-shell-copy-env "PATH")
(exec-path-from-shell-copy-env "GOPATH")
(exec-path-from-shell-copy-env "GOROOT")

